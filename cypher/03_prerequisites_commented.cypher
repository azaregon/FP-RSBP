// Standalone PREREQUISITE_OF relationships with course name comments

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