import 'package:flutter/material.dart';

class HasilKuisPage extends StatelessWidget {
  const HasilKuisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Kuis'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nilai akhir
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Nilai Akhir',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '85',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Sangat Baik',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Waktu pengerjaan dan status
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.access_time, color: Colors.blue[600]),
                          const SizedBox(height: 8),
                          const Text(
                            'Waktu Pengerjaan',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '45 menit',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.orange[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.check_circle, color: Colors.orange[600]),
                          const SizedBox(height: 8),
                          const Text(
                            'Status',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.orange,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Lulus',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.orange[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Review jawaban
              const Text(
                'Review Jawaban',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 16),

              // Jawaban benar
              _buildAnswerCard(
                '1. Apa kepanjangan dari LMS?',
                'Jawaban Anda: Learning Management System',
                'Benar',
                Colors.green,
                Icons.check_circle,
              ),

              _buildAnswerCard(
                '2. Apa framework yang digunakan untuk pengembangan aplikasi mobile?',
                'Jawaban Anda: Flutter',
                'Benar',
                Colors.green,
                Icons.check_circle,
              ),

              _buildAnswerCard(
                '3. Apa kepanjangan dari API?',
                'Jawaban Anda: Application Programming Interface',
                'Salah (Jawaban Benar: Application Programming Interface)',
                Colors.red,
                Icons.cancel,
              ),

              const SizedBox(height: 32),

              // Tombol kembali ke kelas
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Kembali ke Kelas',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnswerCard(
    String question,
    String userAnswer,
    String status,
    Color statusColor,
    IconData statusIcon,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Text(
              userAnswer,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(statusIcon, color: statusColor, size: 16),
                const SizedBox(width: 8),
                Text(
                  status,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: statusColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
