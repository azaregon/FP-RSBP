// ============================================================================
// Study Path Planner - Annotated Standalone Seed Cypher (v4)
// Includes 8-Topic taxonomy, commented PREREQUISITE_OF edges, and COVERS edges
// ============================================================================

// --- COURSES ---
MERGE (:Course {code: 'EF234101', name: 'Dasar Pemrograman', credits: 4, semester: 1, type: 'core'});
MERGE (:Course {code: 'KM234101', name: 'Kalkulus 1', credits: 3, semester: 1, type: 'core'});
MERGE (:Course {code: 'EF234102', name: 'Sistem Digital', credits: 3, semester: 1, type: 'core'});
MERGE (:Course {code: 'EF234103', name: 'Aljabar Linear', credits: 3, semester: 1, type: 'core'});
MERGE (:Course {code: 'UG234901', name: 'Pancasila', credits: 2, semester: 1, type: 'core'});
MERGE (:Course {code: 'UG234902', name: 'Kewarganegaraan', credits: 2, semester: 1, type: 'core'});
MERGE (:Course {code: 'UG234903', name: 'Bahasa Indonesia', credits: 2, semester: 1, type: 'core'});
MERGE (:Course {code: 'EF234201', name: 'Struktur Data', credits: 4, semester: 2, type: 'core'});
MERGE (:Course {code: 'EF234202', name: 'Sistem Operasi', credits: 4, semester: 2, type: 'core'});
MERGE (:Course {code: 'EF234203', name: 'Organisasi Komputer', credits: 3, semester: 2, type: 'core'});
MERGE (:Course {code: 'EF234204', name: 'Komputasi Numerik', credits: 3, semester: 2, type: 'core'});
MERGE (:Course {code: 'KM234201', name: 'Kalkulus 2', credits: 3, semester: 2, type: 'core'});
MERGE (:Course {code: 'UG234904', name: 'Agama', credits: 2, semester: 2, type: 'core'});
MERGE (:Course {code: 'EF234301', name: 'Pemrograman Web', credits: 3, semester: 3, type: 'core'});
MERGE (:Course {code: 'EF234302', name: 'Pemrograman Berorientasi Objek', credits: 3, semester: 3, type: 'core'});
MERGE (:Course {code: 'EF234303', name: 'Jaringan Komputer', credits: 4, semester: 3, type: 'core'});
MERGE (:Course {code: 'EF234304', name: 'Teori Graf', credits: 3, semester: 3, type: 'core'});
MERGE (:Course {code: 'EF234305', name: 'Matematika Diskrit', credits: 3, semester: 3, type: 'core'});
MERGE (:Course {code: 'EF234306', name: 'Konsep Kecerdasan Artifisial', credits: 3, semester: 3, type: 'core'});
MERGE (:Course {code: 'EF234401', name: 'Pemrograman Jaringan', credits: 3, semester: 4, type: 'core'});
MERGE (:Course {code: 'EF234402', name: 'Probabilitas dan Statistik', credits: 3, semester: 4, type: 'core'});
MERGE (:Course {code: 'EF234403', name: 'Otomata', credits: 3, semester: 4, type: 'core'});
MERGE (:Course {code: 'EF234404', name: 'Manajemen Basis Data', credits: 4, semester: 4, type: 'core'});
MERGE (:Course {code: 'EF234405', name: 'Perancangan dan Analisis Algoritma', credits: 3, semester: 4, type: 'core'});
MERGE (:Course {code: 'EF234406', name: 'Pembelajaran Mesin', credits: 3, semester: 4, type: 'core'});
MERGE (:Course {code: 'EF234407', name: 'Perancangan Perangkat Lunak', credits: 3, semester: 4, type: 'core'});
MERGE (:Course {code: 'EF234501', name: 'Pemrograman Berbasis Kerangka Kerja', credits: 3, semester: 5, type: 'core'});
MERGE (:Course {code: 'EF234502', name: 'Keamanan Informasi', credits: 3, semester: 5, type: 'core'});
MERGE (:Course {code: 'EF234503', name: 'Pemodelan dan Simulasi', credits: 3, semester: 5, type: 'core'});
MERGE (:Course {code: 'EF234504', name: 'Grafika Komputer', credits: 3, semester: 5, type: 'core'});
MERGE (:Course {code: 'EF234505', name: 'Rekayasa Sistem Berbasis Pengetahuan', credits: 3, semester: 5, type: 'core'});
MERGE (:Course {code: 'EF234506', name: 'Teknologi Antar Jaringan', credits: 3, semester: 5, type: 'elective'});
MERGE (:Course {code: 'EF234507', name: 'Jaringan Nirkabel', credits: 3, semester: 5, type: 'elective'});
MERGE (:Course {code: 'EF234508', name: 'Sistem Informasi', credits: 3, semester: 5, type: 'core'});
MERGE (:Course {code: 'EF234509', name: 'Tata Kelola Teknologi Informasi', credits: 3, semester: 5, type: 'elective'});
MERGE (:Course {code: 'EF234510', name: 'Pengolahan Citra dan Visi Komputer', credits: 3, semester: 5, type: 'elective'});
MERGE (:Course {code: 'EF234511', name: 'Ilmu Data', credits: 3, semester: 5, type: 'elective'});
MERGE (:Course {code: 'EF234601', name: 'Pemrograman Perangkat Bergerak', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234602', name: 'Interaksi Manusia dan Komputer', credits: 3, semester: 6, type: 'core'});
MERGE (:Course {code: 'EF234603', name: 'Komputasi Bergerak', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234604', name: 'Keamanan Jaringan', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234605', name: 'Keamanan Aplikasi', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234606', name: 'Pemrograman Khusus Antarmuka', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234607', name: 'Simulasi Sistem Diskrit', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234608', name: 'Simulasi Berbasis Agen', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234609', name: 'Audit Sistem', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234610', name: 'Sistem Satu Terdistribusi', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234611', name: 'Deep Learning', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234612', name: 'Komputasi Evolusioner dan Jaringan Syaraf', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234613', name: 'Arsitektur Perangkat Lunak', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234614', name: 'Kualitas Perangkat Lunak', credits: 3, semester: 6, type: 'elective'});
MERGE (:Course {code: 'EF234615', name: 'Kerja Praktik', credits: 3, semester: 6, type: 'core'});
MERGE (:Course {code: 'EF234701', name: 'Forensik Digital', credits: 3, semester: 7, type: 'elective'});
MERGE (:Course {code: 'EF234702', name: 'Pemrosesan Pengolahan Sinyal', credits: 3, semester: 7, type: 'elective'});
MERGE (:Course {code: 'EF234703', name: 'Analisis Citra Multidimensi', credits: 3, semester: 7, type: 'elective'});
MERGE (:Course {code: 'EF234704', name: 'Simulasi Kemunculan Emergent', credits: 3, semester: 7, type: 'elective'});
MERGE (:Course {code: 'EF234705', name: 'Kapita Selekta', credits: 3, semester: 7, type: 'elective'});
MERGE (:Course {code: 'EF234706', name: 'Big Data', credits: 3, semester: 7, type: 'elective'});
MERGE (:Course {code: 'EF234707', name: 'Evolusi Perangkat Lunak', credits: 3, semester: 7, type: 'elective'});
MERGE (:Course {code: 'EF234708', name: 'Pra-Tugas Akhir', credits: 2, semester: 7, type: 'core'});
MERGE (:Course {code: 'EF234801', name: 'Tugas Akhir', credits: 6, semester: 8, type: 'core'});

// --- TOPICS ---
MERGE (:Topic {id: 'SOFT', name: 'Software Engineering'});
MERGE (:Topic {id: 'NETSEC', name: 'Cybersecurity and Networking'});
MERGE (:Topic {id: 'AI', name: 'Artificial Intelligence'});
MERGE (:Topic {id: 'ARCH', name: 'Architecture'});
MERGE (:Topic {id: 'GAME', name: 'Game and Graphics'});
MERGE (:Topic {id: 'ALGO', name: 'Algorithmic'});
MERGE (:Topic {id: 'DATA', name: 'Data and Database'});
MERGE (:Topic {id: 'MATH', name: 'Math Topics'});

// --- SKILLS & PART_OF TOPICS ---
MATCH (t:Topic {id: 'ALGO'}) MERGE (k:Skill {id: 'SK01', name: 'python_programming', esco_uri: 'http://data.europa.eu/esco/skill/python'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'ALGO'}) MERGE (k:Skill {id: 'SK02', name: 'data_structures_and_algorithms', esco_uri: 'http://data.europa.eu/esco/skill/algorithms'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'MATH'}) MERGE (k:Skill {id: 'SK03', name: 'linear_algebra', esco_uri: 'http://data.europa.eu/esco/skill/linear-algebra'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'MATH'}) MERGE (k:Skill {id: 'SK04', name: 'probability_and_statistics', esco_uri: 'http://data.europa.eu/esco/skill/statistics'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'DATA'}) MERGE (k:Skill {id: 'SK05', name: 'sql_and_database_design', esco_uri: 'http://data.europa.eu/esco/skill/sql'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'AI'}) MERGE (k:Skill {id: 'SK06', name: 'machine_learning', esco_uri: 'http://data.europa.eu/esco/skill/machine-learning'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'AI'}) MERGE (k:Skill {id: 'SK07', name: 'deep_learning', esco_uri: 'http://data.europa.eu/esco/skill/deep-learning'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'DATA'}) MERGE (k:Skill {id: 'SK08', name: 'data_mining_and_analytics', esco_uri: 'http://data.europa.eu/esco/skill/data-mining'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'DATA'}) MERGE (k:Skill {id: 'SK09', name: 'big_data_processing', esco_uri: 'http://data.europa.eu/esco/skill/big-data'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'AI'}) MERGE (k:Skill {id: 'SK10', name: 'knowledge_representation', esco_uri: 'http://data.europa.eu/esco/skill/knowledge-engineering'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'NETSEC'}) MERGE (k:Skill {id: 'SK11', name: 'computer_networking', esco_uri: 'http://data.europa.eu/esco/skill/networking'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'ARCH'}) MERGE (k:Skill {id: 'SK12', name: 'operating_systems_security', esco_uri: 'http://data.europa.eu/esco/skill/os-security'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'NETSEC'}) MERGE (k:Skill {id: 'SK13', name: 'information_security_management', esco_uri: 'http://data.europa.eu/esco/skill/infosec'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'NETSEC'}) MERGE (k:Skill {id: 'SK14', name: 'network_security', esco_uri: 'http://data.europa.eu/esco/skill/network-security'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'NETSEC'}) MERGE (k:Skill {id: 'SK15', name: 'application_security', esco_uri: 'http://data.europa.eu/esco/skill/appsec'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'NETSEC'}) MERGE (k:Skill {id: 'SK16', name: 'digital_forensics', esco_uri: 'http://data.europa.eu/esco/skill/digital-forensics'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'SOFT'}) MERGE (k:Skill {id: 'SK17', name: 'web_frontend_development', esco_uri: 'http://data.europa.eu/esco/skill/web-frontend'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'SOFT'}) MERGE (k:Skill {id: 'SK18', name: 'web_backend_frameworks', esco_uri: 'http://data.europa.eu/esco/skill/web-backend'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'SOFT'}) MERGE (k:Skill {id: 'SK19', name: 'object_oriented_design', esco_uri: 'http://data.europa.eu/esco/skill/oop'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'SOFT'}) MERGE (k:Skill {id: 'SK20', name: 'software_architecture_and_testing', esco_uri: 'http://data.europa.eu/esco/skill/software-arch'}) MERGE (k)-[:PART_OF]->(t);
MATCH (t:Topic {id: 'SOFT'}) MERGE (k:Skill {id: 'SK21', name: 'ui_ux_design', esco_uri: 'http://data.europa.eu/esco/skill/ui-ux'}) MERGE (k)-[:PART_OF]->(t);

// --- PROFESSIONS ---
MERGE (:Profession {id: 'PROF_DS', name: 'Data Scientist', esco_code: '2511.1'});
MERGE (:Profession {id: 'PROF_CS', name: 'Cybersecurity Analyst', esco_code: '2529.1'});
MERGE (:Profession {id: 'PROF_WD', name: 'Web Developer', esco_code: '2513.1'});

// --- STUDENTS ---
MERGE (:Student {id: 'STU_RANI', name: 'Rani', semester: 3, max_credits: 24});
MERGE (:Student {id: 'STU_BUDI', name: 'Budi', semester: 4, max_credits: 24});
MERGE (:Student {id: 'STU_SARI', name: 'Sari', semester: 4, max_credits: 24});

// --- PREREQUISITES (PREREQUISITE_OF) WITH COURSE NAME COMMENTS ---
// Dasar Pemrograman -> Struktur Data
MATCH (a:Course {code: 'EF234101'}), (b:Course {code: 'EF234201'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Sistem Digital -> Sistem Operasi
MATCH (a:Course {code: 'EF234102'}), (b:Course {code: 'EF234202'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Sistem Digital -> Organisasi Komputer
MATCH (a:Course {code: 'EF234102'}), (b:Course {code: 'EF234203'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Aljabar Linear -> Komputasi Numerik
MATCH (a:Course {code: 'EF234103'}), (b:Course {code: 'EF234204'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Kalkulus 1 -> Kalkulus 2
MATCH (a:Course {code: 'KM234101'}), (b:Course {code: 'KM234201'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Dasar Pemrograman -> Pemrograman Web
MATCH (a:Course {code: 'EF234101'}), (b:Course {code: 'EF234301'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Struktur Data -> Pemrograman Berorientasi Objek
MATCH (a:Course {code: 'EF234201'}), (b:Course {code: 'EF234302'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Sistem Operasi -> Jaringan Komputer
MATCH (a:Course {code: 'EF234202'}), (b:Course {code: 'EF234303'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Kalkulus 2 -> Teori Graf
MATCH (a:Course {code: 'KM234201'}), (b:Course {code: 'EF234304'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Kalkulus 2 -> Matematika Diskrit
MATCH (a:Course {code: 'KM234201'}), (b:Course {code: 'EF234305'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Struktur Data -> Konsep Kecerdasan Artifisial
MATCH (a:Course {code: 'EF234201'}), (b:Course {code: 'EF234306'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Jaringan Komputer -> Pemrograman Jaringan
MATCH (a:Course {code: 'EF234303'}), (b:Course {code: 'EF234401'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Matematika Diskrit -> Probabilitas dan Statistik
MATCH (a:Course {code: 'EF234305'}), (b:Course {code: 'EF234402'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Kalkulus 2 -> Otomata
MATCH (a:Course {code: 'KM234201'}), (b:Course {code: 'EF234403'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Struktur Data -> Manajemen Basis Data
MATCH (a:Course {code: 'EF234201'}), (b:Course {code: 'EF234404'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Struktur Data -> Perancangan dan Analisis Algoritma
MATCH (a:Course {code: 'EF234201'}), (b:Course {code: 'EF234405'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Konsep Kecerdasan Artifisial -> Pembelajaran Mesin
MATCH (a:Course {code: 'EF234306'}), (b:Course {code: 'EF234406'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Aljabar Linear -> Pembelajaran Mesin
MATCH (a:Course {code: 'EF234103'}), (b:Course {code: 'EF234406'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pemrograman Berorientasi Objek -> Perancangan Perangkat Lunak
MATCH (a:Course {code: 'EF234302'}), (b:Course {code: 'EF234407'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pemrograman Web -> Pemrograman Berbasis Kerangka Kerja
MATCH (a:Course {code: 'EF234301'}), (b:Course {code: 'EF234501'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Jaringan Komputer -> Keamanan Informasi
MATCH (a:Course {code: 'EF234303'}), (b:Course {code: 'EF234502'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Probabilitas dan Statistik -> Pemodelan dan Simulasi
MATCH (a:Course {code: 'EF234402'}), (b:Course {code: 'EF234503'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pemrograman Berorientasi Objek -> Grafika Komputer
MATCH (a:Course {code: 'EF234302'}), (b:Course {code: 'EF234504'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Konsep Kecerdasan Artifisial -> Rekayasa Sistem Berbasis Pengetahuan
MATCH (a:Course {code: 'EF234306'}), (b:Course {code: 'EF234505'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Jaringan Komputer -> Teknologi Antar Jaringan
MATCH (a:Course {code: 'EF234303'}), (b:Course {code: 'EF234506'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Jaringan Komputer -> Jaringan Nirkabel
MATCH (a:Course {code: 'EF234303'}), (b:Course {code: 'EF234507'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Manajemen Basis Data -> Sistem Informasi
MATCH (a:Course {code: 'EF234404'}), (b:Course {code: 'EF234508'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Manajemen Basis Data -> Tata Kelola Teknologi Informasi
MATCH (a:Course {code: 'EF234404'}), (b:Course {code: 'EF234509'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pembelajaran Mesin -> Pengolahan Citra dan Visi Komputer
MATCH (a:Course {code: 'EF234406'}), (b:Course {code: 'EF234510'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pembelajaran Mesin -> Ilmu Data
MATCH (a:Course {code: 'EF234406'}), (b:Course {code: 'EF234511'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pemrograman Berorientasi Objek -> Pemrograman Perangkat Bergerak
MATCH (a:Course {code: 'EF234302'}), (b:Course {code: 'EF234601'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pemrograman Berorientasi Objek -> Interaksi Manusia dan Komputer
MATCH (a:Course {code: 'EF234302'}), (b:Course {code: 'EF234602'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Jaringan Komputer -> Komputasi Bergerak
MATCH (a:Course {code: 'EF234303'}), (b:Course {code: 'EF234603'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Jaringan Komputer -> Keamanan Jaringan
MATCH (a:Course {code: 'EF234303'}), (b:Course {code: 'EF234604'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Sistem Operasi -> Keamanan Aplikasi
MATCH (a:Course {code: 'EF234202'}), (b:Course {code: 'EF234605'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Jaringan Komputer -> Keamanan Aplikasi
MATCH (a:Course {code: 'EF234303'}), (b:Course {code: 'EF234605'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pemrograman Web -> Pemrograman Khusus Antarmuka
MATCH (a:Course {code: 'EF234301'}), (b:Course {code: 'EF234606'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pemodelan dan Simulasi -> Simulasi Sistem Diskrit
MATCH (a:Course {code: 'EF234503'}), (b:Course {code: 'EF234607'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pemodelan dan Simulasi -> Simulasi Berbasis Agen
MATCH (a:Course {code: 'EF234503'}), (b:Course {code: 'EF234608'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Manajemen Basis Data -> Audit Sistem
MATCH (a:Course {code: 'EF234404'}), (b:Course {code: 'EF234609'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Manajemen Basis Data -> Sistem Satu Terdistribusi
MATCH (a:Course {code: 'EF234404'}), (b:Course {code: 'EF234610'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pembelajaran Mesin -> Deep Learning
MATCH (a:Course {code: 'EF234406'}), (b:Course {code: 'EF234611'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pembelajaran Mesin -> Komputasi Evolusioner dan Jaringan Syaraf
MATCH (a:Course {code: 'EF234406'}), (b:Course {code: 'EF234612'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Perancangan Perangkat Lunak -> Arsitektur Perangkat Lunak
MATCH (a:Course {code: 'EF234407'}), (b:Course {code: 'EF234613'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Perancangan Perangkat Lunak -> Kualitas Perangkat Lunak
MATCH (a:Course {code: 'EF234407'}), (b:Course {code: 'EF234614'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Jaringan Komputer -> Forensik Digital
MATCH (a:Course {code: 'EF234303'}), (b:Course {code: 'EF234701'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Perancangan dan Analisis Algoritma -> Pemrosesan Pengolahan Sinyal
MATCH (a:Course {code: 'EF234405'}), (b:Course {code: 'EF234702'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Probabilitas dan Statistik -> Analisis Citra Multidimensi
MATCH (a:Course {code: 'EF234402'}), (b:Course {code: 'EF234703'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pemodelan dan Simulasi -> Simulasi Kemunculan Emergent
MATCH (a:Course {code: 'EF234503'}), (b:Course {code: 'EF234704'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Manajemen Basis Data -> Big Data
MATCH (a:Course {code: 'EF234404'}), (b:Course {code: 'EF234706'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Perancangan Perangkat Lunak -> Evolusi Perangkat Lunak
MATCH (a:Course {code: 'EF234407'}), (b:Course {code: 'EF234707'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Kerja Praktik -> Pra-Tugas Akhir
MATCH (a:Course {code: 'EF234615'}), (b:Course {code: 'EF234708'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);
// Pra-Tugas Akhir -> Tugas Akhir
MATCH (a:Course {code: 'EF234708'}), (b:Course {code: 'EF234801'}) MERGE (a)-[:PREREQUISITE_OF {min_grade: 'D', logic_group: 'AND'}]->(b);

// --- COURSE TOPICS (COVERS) ---
// Dasar Pemrograman covers ALGO
MATCH (c:Course {code: 'EF234101'}) , (t:Topic {id: 'ALGO'}) MERGE (c)-[:COVERS]->(t);
// Kalkulus 1 covers MATH
MATCH (c:Course {code: 'KM234101'}) , (t:Topic {id: 'MATH'}) MERGE (c)-[:COVERS]->(t);
// Sistem Digital covers ARCH
MATCH (c:Course {code: 'EF234102'}) , (t:Topic {id: 'ARCH'}) MERGE (c)-[:COVERS]->(t);
// Aljabar Linear covers MATH
MATCH (c:Course {code: 'EF234103'}) , (t:Topic {id: 'MATH'}) MERGE (c)-[:COVERS]->(t);
// Struktur Data covers ALGO
MATCH (c:Course {code: 'EF234201'}) , (t:Topic {id: 'ALGO'}) MERGE (c)-[:COVERS]->(t);
// Sistem Operasi covers ARCH
MATCH (c:Course {code: 'EF234202'}) , (t:Topic {id: 'ARCH'}) MERGE (c)-[:COVERS]->(t);
// Organisasi Komputer covers ARCH
MATCH (c:Course {code: 'EF234203'}) , (t:Topic {id: 'ARCH'}) MERGE (c)-[:COVERS]->(t);
// Komputasi Numerik covers MATH
MATCH (c:Course {code: 'EF234204'}) , (t:Topic {id: 'MATH'}) MERGE (c)-[:COVERS]->(t);
// Kalkulus 2 covers MATH
MATCH (c:Course {code: 'KM234201'}) , (t:Topic {id: 'MATH'}) MERGE (c)-[:COVERS]->(t);
// Pemrograman Web covers SOFT
MATCH (c:Course {code: 'EF234301'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Pemrograman Berorientasi Objek covers SOFT
MATCH (c:Course {code: 'EF234302'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Jaringan Komputer covers NETSEC
MATCH (c:Course {code: 'EF234303'}) , (t:Topic {id: 'NETSEC'}) MERGE (c)-[:COVERS]->(t);
// Teori Graf covers MATH
MATCH (c:Course {code: 'EF234304'}) , (t:Topic {id: 'MATH'}) MERGE (c)-[:COVERS]->(t);
// Matematika Diskrit covers MATH
MATCH (c:Course {code: 'EF234305'}) , (t:Topic {id: 'MATH'}) MERGE (c)-[:COVERS]->(t);
// Konsep Kecerdasan Artifisial covers AI
MATCH (c:Course {code: 'EF234306'}) , (t:Topic {id: 'AI'}) MERGE (c)-[:COVERS]->(t);
// Pemrograman Jaringan covers NETSEC
MATCH (c:Course {code: 'EF234401'}) , (t:Topic {id: 'NETSEC'}) MERGE (c)-[:COVERS]->(t);
// Probabilitas dan Statistik covers MATH
MATCH (c:Course {code: 'EF234402'}) , (t:Topic {id: 'MATH'}) MERGE (c)-[:COVERS]->(t);
// Otomata covers ALGO
MATCH (c:Course {code: 'EF234403'}) , (t:Topic {id: 'ALGO'}) MERGE (c)-[:COVERS]->(t);
// Manajemen Basis Data covers DATA
MATCH (c:Course {code: 'EF234404'}) , (t:Topic {id: 'DATA'}) MERGE (c)-[:COVERS]->(t);
// Perancangan dan Analisis Algoritma covers ALGO
MATCH (c:Course {code: 'EF234405'}) , (t:Topic {id: 'ALGO'}) MERGE (c)-[:COVERS]->(t);
// Pembelajaran Mesin covers AI
MATCH (c:Course {code: 'EF234406'}) , (t:Topic {id: 'AI'}) MERGE (c)-[:COVERS]->(t);
// Perancangan Perangkat Lunak covers SOFT
MATCH (c:Course {code: 'EF234407'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Pemrograman Berbasis Kerangka Kerja covers SOFT
MATCH (c:Course {code: 'EF234501'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Keamanan Informasi covers NETSEC
MATCH (c:Course {code: 'EF234502'}) , (t:Topic {id: 'NETSEC'}) MERGE (c)-[:COVERS]->(t);
// Pemodelan dan Simulasi covers MATH
MATCH (c:Course {code: 'EF234503'}) , (t:Topic {id: 'MATH'}) MERGE (c)-[:COVERS]->(t);
// Grafika Komputer covers GAME
MATCH (c:Course {code: 'EF234504'}) , (t:Topic {id: 'GAME'}) MERGE (c)-[:COVERS]->(t);
// Rekayasa Sistem Berbasis Pengetahuan covers DATA
MATCH (c:Course {code: 'EF234505'}) , (t:Topic {id: 'DATA'}) MERGE (c)-[:COVERS]->(t);
// Teknologi Antar Jaringan covers NETSEC
MATCH (c:Course {code: 'EF234506'}) , (t:Topic {id: 'NETSEC'}) MERGE (c)-[:COVERS]->(t);
// Jaringan Nirkabel covers NETSEC
MATCH (c:Course {code: 'EF234507'}) , (t:Topic {id: 'NETSEC'}) MERGE (c)-[:COVERS]->(t);
// Sistem Informasi covers SOFT
MATCH (c:Course {code: 'EF234508'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Tata Kelola Teknologi Informasi covers SOFT
MATCH (c:Course {code: 'EF234509'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Pengolahan Citra dan Visi Komputer covers AI
MATCH (c:Course {code: 'EF234510'}) , (t:Topic {id: 'AI'}) MERGE (c)-[:COVERS]->(t);
// Pengolahan Citra dan Visi Komputer covers GAME
MATCH (c:Course {code: 'EF234510'}) , (t:Topic {id: 'GAME'}) MERGE (c)-[:COVERS]->(t);
// Ilmu Data covers DATA
MATCH (c:Course {code: 'EF234511'}) , (t:Topic {id: 'DATA'}) MERGE (c)-[:COVERS]->(t);
// Pemrograman Perangkat Bergerak covers SOFT
MATCH (c:Course {code: 'EF234601'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Interaksi Manusia dan Komputer covers GAME
MATCH (c:Course {code: 'EF234602'}) , (t:Topic {id: 'GAME'}) MERGE (c)-[:COVERS]->(t);
// Komputasi Bergerak covers NETSEC
MATCH (c:Course {code: 'EF234603'}) , (t:Topic {id: 'NETSEC'}) MERGE (c)-[:COVERS]->(t);
// Keamanan Jaringan covers NETSEC
MATCH (c:Course {code: 'EF234604'}) , (t:Topic {id: 'NETSEC'}) MERGE (c)-[:COVERS]->(t);
// Keamanan Aplikasi covers NETSEC
MATCH (c:Course {code: 'EF234605'}) , (t:Topic {id: 'NETSEC'}) MERGE (c)-[:COVERS]->(t);
// Keamanan Aplikasi covers SOFT
MATCH (c:Course {code: 'EF234605'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Pemrograman Khusus Antarmuka covers GAME
MATCH (c:Course {code: 'EF234606'}) , (t:Topic {id: 'GAME'}) MERGE (c)-[:COVERS]->(t);
// Pemrograman Khusus Antarmuka covers SOFT
MATCH (c:Course {code: 'EF234606'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Simulasi Sistem Diskrit covers MATH
MATCH (c:Course {code: 'EF234607'}) , (t:Topic {id: 'MATH'}) MERGE (c)-[:COVERS]->(t);
// Simulasi Berbasis Agen covers MATH
MATCH (c:Course {code: 'EF234608'}) , (t:Topic {id: 'MATH'}) MERGE (c)-[:COVERS]->(t);
// Audit Sistem covers SOFT
MATCH (c:Course {code: 'EF234609'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Sistem Satu Terdistribusi covers ARCH
MATCH (c:Course {code: 'EF234610'}) , (t:Topic {id: 'ARCH'}) MERGE (c)-[:COVERS]->(t);
// Deep Learning covers AI
MATCH (c:Course {code: 'EF234611'}) , (t:Topic {id: 'AI'}) MERGE (c)-[:COVERS]->(t);
// Komputasi Evolusioner dan Jaringan Syaraf covers AI
MATCH (c:Course {code: 'EF234612'}) , (t:Topic {id: 'AI'}) MERGE (c)-[:COVERS]->(t);
// Arsitektur Perangkat Lunak covers SOFT
MATCH (c:Course {code: 'EF234613'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Kualitas Perangkat Lunak covers SOFT
MATCH (c:Course {code: 'EF234614'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);
// Forensik Digital covers NETSEC
MATCH (c:Course {code: 'EF234701'}) , (t:Topic {id: 'NETSEC'}) MERGE (c)-[:COVERS]->(t);
// Pemrosesan Pengolahan Sinyal covers ALGO
MATCH (c:Course {code: 'EF234702'}) , (t:Topic {id: 'ALGO'}) MERGE (c)-[:COVERS]->(t);
// Analisis Citra Multidimensi covers GAME
MATCH (c:Course {code: 'EF234703'}) , (t:Topic {id: 'GAME'}) MERGE (c)-[:COVERS]->(t);
// Simulasi Kemunculan Emergent covers MATH
MATCH (c:Course {code: 'EF234704'}) , (t:Topic {id: 'MATH'}) MERGE (c)-[:COVERS]->(t);
// Big Data covers DATA
MATCH (c:Course {code: 'EF234706'}) , (t:Topic {id: 'DATA'}) MERGE (c)-[:COVERS]->(t);
// Evolusi Perangkat Lunak covers SOFT
MATCH (c:Course {code: 'EF234707'}) , (t:Topic {id: 'SOFT'}) MERGE (c)-[:COVERS]->(t);

// --- COURSE SKILLS (TEACHES_SKILL) ---
MATCH (c:Course {code: 'EF234101'}) , (k:Skill {id: 'SK01'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234201'}) , (k:Skill {id: 'SK02'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234405'}) , (k:Skill {id: 'SK02'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234103'}) , (k:Skill {id: 'SK03'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234402'}) , (k:Skill {id: 'SK04'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234404'}) , (k:Skill {id: 'SK05'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234406'}) , (k:Skill {id: 'SK06'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234611'}) , (k:Skill {id: 'SK07'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234511'}) , (k:Skill {id: 'SK08'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234706'}) , (k:Skill {id: 'SK09'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234505'}) , (k:Skill {id: 'SK10'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234303'}) , (k:Skill {id: 'SK11'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234202'}) , (k:Skill {id: 'SK12'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234502'}) , (k:Skill {id: 'SK13'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234604'}) , (k:Skill {id: 'SK14'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234605'}) , (k:Skill {id: 'SK15'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234701'}) , (k:Skill {id: 'SK16'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234301'}) , (k:Skill {id: 'SK17'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234606'}) , (k:Skill {id: 'SK17'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234501'}) , (k:Skill {id: 'SK18'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234302'}) , (k:Skill {id: 'SK19'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234407'}) , (k:Skill {id: 'SK20'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234613'}) , (k:Skill {id: 'SK20'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234614'}) , (k:Skill {id: 'SK20'}) MERGE (c)-[:TEACHES_SKILL]->(k);
MATCH (c:Course {code: 'EF234602'}) , (k:Skill {id: 'SK21'}) MERGE (c)-[:TEACHES_SKILL]->(k);

// --- PROFESSION SKILLS (REQUIRED_FOR) ---
MATCH (k:Skill {id: 'SK01'}) , (j:Profession {id: 'PROF_DS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 1.0}]->(j);
MATCH (k:Skill {id: 'SK02'}) , (j:Profession {id: 'PROF_DS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 0.9}]->(j);
MATCH (k:Skill {id: 'SK03'}) , (j:Profession {id: 'PROF_DS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 0.95}]->(j);
MATCH (k:Skill {id: 'SK04'}) , (j:Profession {id: 'PROF_DS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 1.0}]->(j);
MATCH (k:Skill {id: 'SK05'}) , (j:Profession {id: 'PROF_DS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 0.9}]->(j);
MATCH (k:Skill {id: 'SK06'}) , (j:Profession {id: 'PROF_DS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 1.0}]->(j);
MATCH (k:Skill {id: 'SK07'}) , (j:Profession {id: 'PROF_DS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'optional', weight: 0.8}]->(j);
MATCH (k:Skill {id: 'SK08'}) , (j:Profession {id: 'PROF_DS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 0.95}]->(j);
MATCH (k:Skill {id: 'SK09'}) , (j:Profession {id: 'PROF_DS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'optional', weight: 0.75}]->(j);
MATCH (k:Skill {id: 'SK11'}) , (j:Profession {id: 'PROF_CS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 1.0}]->(j);
MATCH (k:Skill {id: 'SK12'}) , (j:Profession {id: 'PROF_CS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 0.9}]->(j);
MATCH (k:Skill {id: 'SK13'}) , (j:Profession {id: 'PROF_CS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 1.0}]->(j);
MATCH (k:Skill {id: 'SK14'}) , (j:Profession {id: 'PROF_CS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 0.95}]->(j);
MATCH (k:Skill {id: 'SK15'}) , (j:Profession {id: 'PROF_CS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 0.9}]->(j);
MATCH (k:Skill {id: 'SK16'}) , (j:Profession {id: 'PROF_CS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'optional', weight: 0.85}]->(j);
MATCH (k:Skill {id: 'SK01'}) , (j:Profession {id: 'PROF_CS'}) MERGE (k)-[:REQUIRED_FOR {importance: 'optional', weight: 0.75}]->(j);
MATCH (k:Skill {id: 'SK01'}) , (j:Profession {id: 'PROF_WD'}) MERGE (k)-[:REQUIRED_FOR {importance: 'optional', weight: 0.7}]->(j);
MATCH (k:Skill {id: 'SK02'}) , (j:Profession {id: 'PROF_WD'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 0.85}]->(j);
MATCH (k:Skill {id: 'SK05'}) , (j:Profession {id: 'PROF_WD'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 0.95}]->(j);
MATCH (k:Skill {id: 'SK17'}) , (j:Profession {id: 'PROF_WD'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 1.0}]->(j);
MATCH (k:Skill {id: 'SK18'}) , (j:Profession {id: 'PROF_WD'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 1.0}]->(j);
MATCH (k:Skill {id: 'SK19'}) , (j:Profession {id: 'PROF_WD'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 0.9}]->(j);
MATCH (k:Skill {id: 'SK20'}) , (j:Profession {id: 'PROF_WD'}) MERGE (k)-[:REQUIRED_FOR {importance: 'essential', weight: 0.85}]->(j);
MATCH (k:Skill {id: 'SK21'}) , (j:Profession {id: 'PROF_WD'}) MERGE (k)-[:REQUIRED_FOR {importance: 'optional', weight: 0.8}]->(j);

// --- STUDENT TRANSCRIPTS (PASSED / FAILED) ---
MATCH (s:Student {id: 'STU_RANI'}) , (c:Course {code: 'EF234101'}) MERGE (s)-[:PASSED {grade: 'A'}]->(c);
MATCH (s:Student {id: 'STU_RANI'}) , (c:Course {code: 'KM234101'}) MERGE (s)-[:PASSED {grade: 'AB'}]->(c);
MATCH (s:Student {id: 'STU_RANI'}) , (c:Course {code: 'KM234201'}) MERGE (s)-[:PASSED {grade: 'B'}]->(c);
MATCH (s:Student {id: 'STU_RANI'}) , (c:Course {code: 'EF234201'}) MERGE (s)-[:PASSED {grade: 'A'}]->(c);
MATCH (s:Student {id: 'STU_RANI'}) , (c:Course {code: 'EF234305'}) MERGE (s)-[:PASSED {grade: 'AB'}]->(c);
MATCH (s:Student {id: 'STU_RANI'}) , (c:Course {code: 'EF234402'}) MERGE (s)-[:PASSED {grade: 'A'}]->(c);
MATCH (s:Student {id: 'STU_RANI'}) , (c:Course {code: 'EF234404'}) MERGE (s)-[:PASSED {grade: 'AB'}]->(c);
MATCH (s:Student {id: 'STU_RANI'}) , (c:Course {code: 'EF234306'}) MERGE (s)-[:PASSED {grade: 'B'}]->(c);
MATCH (s:Student {id: 'STU_RANI'}) , (c:Course {code: 'EF234103'}) MERGE (s)-[:FAILED {grade: 'E'}]->(c);
MATCH (s:Student {id: 'STU_BUDI'}) , (c:Course {code: 'EF234101'}) MERGE (s)-[:PASSED {grade: 'AB'}]->(c);
MATCH (s:Student {id: 'STU_BUDI'}) , (c:Course {code: 'EF234102'}) MERGE (s)-[:PASSED {grade: 'B'}]->(c);
MATCH (s:Student {id: 'STU_BUDI'}) , (c:Course {code: 'EF234201'}) MERGE (s)-[:PASSED {grade: 'B'}]->(c);
MATCH (s:Student {id: 'STU_BUDI'}) , (c:Course {code: 'EF234202'}) MERGE (s)-[:PASSED {grade: 'A'}]->(c);
MATCH (s:Student {id: 'STU_BUDI'}) , (c:Course {code: 'EF234303'}) MERGE (s)-[:PASSED {grade: 'A'}]->(c);
MATCH (s:Student {id: 'STU_SARI'}) , (c:Course {code: 'EF234101'}) MERGE (s)-[:PASSED {grade: 'A'}]->(c);
MATCH (s:Student {id: 'STU_SARI'}) , (c:Course {code: 'EF234201'}) MERGE (s)-[:PASSED {grade: 'AB'}]->(c);
MATCH (s:Student {id: 'STU_SARI'}) , (c:Course {code: 'EF234301'}) MERGE (s)-[:PASSED {grade: 'A'}]->(c);
MATCH (s:Student {id: 'STU_SARI'}) , (c:Course {code: 'EF234302'}) MERGE (s)-[:PASSED {grade: 'A'}]->(c);
MATCH (s:Student {id: 'STU_SARI'}) , (c:Course {code: 'EF234404'}) MERGE (s)-[:PASSED {grade: 'B'}]->(c);