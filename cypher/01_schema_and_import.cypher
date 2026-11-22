// ============================================================================
// Study Path Planner - Neo4j Schema, Constraints & CSV Import Script
// Matches Proposal Knowledge Model (Slide 8) & Core Queries (Slide 13)
// ============================================================================

// 1. UNIQUENESS CONSTRAINTS & INDEXES
CREATE CONSTRAINT course_code_unique IF NOT EXISTS
FOR (c:Course) REQUIRE c.code IS UNIQUE;

CREATE CONSTRAINT skill_id_unique IF NOT EXISTS
FOR (k:Skill) REQUIRE k.id IS UNIQUE;

CREATE CONSTRAINT profession_id_unique IF NOT EXISTS
FOR (j:Profession) REQUIRE j.id IS UNIQUE;

CREATE CONSTRAINT topic_id_unique IF NOT EXISTS
FOR (t:Topic) REQUIRE t.id IS UNIQUE;

CREATE CONSTRAINT student_id_unique IF NOT EXISTS
FOR (s:Student) REQUIRE s.id IS UNIQUE;

CREATE INDEX profession_name_idx IF NOT EXISTS
FOR (j:Profession) ON (j.name);

// 2. LOAD NODES
LOAD CSV WITH HEADERS FROM 'file:///courses.csv' AS row
MERGE (c:Course {code: row.code})
SET c.name = row.name,
    c.credits = toInteger(row.credits),
    c.semester = toInteger(row.semester),
    c.type = row.type;

LOAD CSV WITH HEADERS FROM 'file:///topics.csv' AS row
MERGE (t:Topic {id: row.id})
SET t.name = row.name;

LOAD CSV WITH HEADERS FROM 'file:///skills.csv' AS row
MERGE (k:Skill {id: row.id})
SET k.name = row.name,
    k.esco_uri = row.esco_uri
WITH k, row
MATCH (t:Topic {id: row.topic_id})
MERGE (k)-[:PART_OF]->(t);

LOAD CSV WITH HEADERS FROM 'file:///professions.csv' AS row
MERGE (j:Profession {id: row.id})
SET j.name = row.name,
    j.esco_code = row.esco_code;

LOAD CSV WITH HEADERS FROM 'file:///students.csv' AS row
MERGE (s:Student {id: row.id})
SET s.name = row.name,
    s.semester = toInteger(row.current_semester),
    s.max_credits = toInteger(row.max_credits);

// 3. LOAD RELATIONSHIPS
// Prerequisites: (pre)-[:PREREQUISITE_OF]->(course)
LOAD CSV WITH HEADERS FROM 'file:///prerequisites.csv' AS row
MATCH (pre:Course {code: row.prereq_code})
MATCH (c:Course {code: row.course_code})
MERGE (pre)-[r:PREREQUISITE_OF]->(c)
SET r.min_grade = row.min_grade,
    r.logic_group = row.logic_group;

// Course Topics: (course)-[:COVERS]->(topic)
LOAD CSV WITH HEADERS FROM 'file:///course_topics.csv' AS row
MATCH (c:Course {code: row.course_code})
MATCH (t:Topic {id: row.topic_id})
MERGE (c)-[:COVERS]->(t);

// Course Teaches Skill: (course)-[:TEACHES_SKILL]->(skill)
LOAD CSV WITH HEADERS FROM 'file:///teaches_skill.csv' AS row
MATCH (c:Course {code: row.course_code})
MATCH (k:Skill {id: row.skill_id})
MERGE (c)-[:TEACHES_SKILL]->(k);

// Skill Required For Profession: (skill)-[:REQUIRED_FOR]->(profession)
LOAD CSV WITH HEADERS FROM 'file:///required_for.csv' AS row
MATCH (k:Skill {id: row.skill_id})
MATCH (j:Profession {id: row.profession_id})
MERGE (k)-[r:REQUIRED_FOR]->(j)
SET r.importance = row.importance,
    r.weight = toFloat(row.weight);

// Student Transcripts: PASSED or FAILED edges
LOAD CSV WITH HEADERS FROM 'file:///transcripts.csv' AS row
MATCH (s:Student {id: row.student_id})
MATCH (c:Course {code: row.course_code})
FOREACH (_ IN CASE WHEN row.status = 'PASSED' THEN [1] ELSE [] END |
    MERGE (s)-[r:PASSED]->(c)
    SET r.grade = row.grade
)
FOREACH (_ IN CASE WHEN row.status = 'FAILED' THEN [1] ELSE [] END |
    MERGE (s)-[r:FAILED]->(c)
    SET r.grade = row.grade
);
