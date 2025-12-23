import 'package:flutter/material.dart';
import 'package:lms_app/pages/materi_page.dart';

class KelasPage extends StatelessWidget {
  const KelasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelas'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Daftar Mata Kuliah',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildClassCard(
                    'Desain Antarmuka & Pengalaman Pengguna',
                    'IF201',
                    'Dr. Andi Prasetyo',
                    '10 September 2025',
                    '2025/2026',
                    85,
                    Colors.blue,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MateriPage(),
                        ),
                      );
                    },
                  ),
                  _buildClassCard(
                    'Sistem Operasi',
                    'IF202',
                    'Prof. Siti Rahayu',
                    '12 September 2025',
                    '2025/2026',
                    70,
                    Colors.green,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MateriPage(),
                        ),
                      );
                    },
                  ),
                  _buildClassCard(
                    'Bahasa Inggris',
                    'BA201',
                    'Dr. Michael Johnson',
                    '15 September 2025',
                    '2025/2026',
                    90,
                    Colors.orange,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MateriPage(),
                        ),
                      );
                    },
                  ),
                  _buildClassCard(
                    'Pemrograman Multimedia',
                    'IF203',
                    'Dr. Rina Kusuma',
                    '18 September 2025',
                    '2025/2026',
                    60,
                    Colors.purple,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MateriPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClassCard(
    String className,
    String classCode,
    String lecturer,
    String startDate,
    String academicYear,
    int progress,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      className,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '$progress%',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.class_, color: Colors.grey[600], size: 16),
                  const SizedBox(width: 4),
                  Text(
                    '$classCode • $lecturer',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.date_range, color: Colors.grey[600], size: 16),
                  const SizedBox(width: 4),
                  Text(
                    'Mulai: $startDate',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.school, color: Colors.grey[600], size: 16),
                  const SizedBox(width: 4),
                  Text(
                    'Tahun Ajaran: $academicYear',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              LinearProgressIndicator(
                value: progress / 100,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
