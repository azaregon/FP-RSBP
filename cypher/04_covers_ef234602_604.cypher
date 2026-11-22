// Course -> Topic (COVERS) relationships for EF234602, EF234603, EF234604

MATCH (c:Course {code: 'EF234602'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
MATCH (c:Course {code: 'EF234603'}) , (t:Topic {id: 'NETSEC'}) MERGE (c)-[:COVERS]->(t);
MATCH (c:Course {code: 'EF234604'}) , (t:Topic {id: 'NETSEC'}) MERGE (c)-[:COVERS]->(t);