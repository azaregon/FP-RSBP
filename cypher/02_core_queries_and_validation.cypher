// ============================================================================
// Study Path Planner - Core Reasoning, Validation & GDS Queries
// ============================================================================

// GATE CHECK 1: Verify zero prerequisite cycles (DAG check)
MATCH path = (c:Course)-[:PREREQUISITE_OF*1..]->(c)
RETURN c.code AS cycle_node, [n IN nodes(path) | n.code] AS cycle_path;

// Q1. Courses a profession needs (Full prerequisite closure)
MATCH (j:Profession {name: 'Data Scientist'})<-[:REQUIRED_FOR]-(:Skill)<-[:TEACHES_SKILL]-(c:Course)
MATCH (pre:Course)-[:PREREQUISITE_OF*0..]->(c)
RETURN DISTINCT pre.code AS code, pre.name AS course, pre.semester AS default_sem, pre.credits AS sks
ORDER BY default_sem, code;

// Q2. Earliest semester per course (Longest prerequisite chain)
MATCH path = (root:Course)-[:PREREQUISITE_OF*0..]->(c:Course)
WHERE NOT ()-[:PREREQUISITE_OF]->(root)
RETURN c.code AS code, c.name AS course, max(length(path)) + 1 AS earliest_semester
ORDER BY earliest_semester, code;

// Q3. Skill gap of a student (e.g., Rani -> Data Scientist)
MATCH (s:Student {id: 'STU_RANI'}), (j:Profession {name: 'Data Scientist'})<-[:REQUIRED_FOR]-(k:Skill)
WHERE NOT EXISTS {
    (s)-[p:PASSED]->(:Course)-[:TEACHES_SKILL]->(k)
    WHERE p.grade IN ['A', 'AB', 'B']
}
RETURN k.id AS skill_id, k.name AS missing_skill;

// Q4. Explainable course recommendations + blocked downstream status
MATCH (s:Student {id: 'STU_RANI'}), (j:Profession {name: 'Data Scientist'})<-[req:REQUIRED_FOR]-(k:Skill)<-[:TEACHES_SKILL]-(c:Course)
WHERE NOT EXISTS {
    (s)-[p:PASSED]->(:Course)-[:TEACHES_SKILL]->(k)
    WHERE p.grade IN ['A', 'AB', 'B']
}
AND NOT (s)-[:PASSED]->(c)
OPTIONAL MATCH (s)-[:FAILED]->(failed:Course)-[:PREREQUISITE_OF*1..]->(c)
RETURN DISTINCT c.code AS recommended_course,
       c.name AS course_name,
       c.semester AS offered_semester,
       collect(DISTINCT k.name) AS closes_skills,
       collect(DISTINCT failed.name) AS blocked_by_failed_prereq
ORDER BY offered_semester, recommended_course;

// Q5. What-if delay simulation: What happens if a student fails a specific course?
MATCH (f:Course {code: 'EF234103'})-[path:PREREQUISITE_OF*1..]->(downstream:Course)
RETURN f.name AS failed_course,
       downstream.code AS blocked_code,
       downstream.name AS blocked_course,
       length(path) AS chain_depth,
       [n IN nodes(path) | n.name] AS dependency_chain
ORDER BY chain_depth, blocked_code;
