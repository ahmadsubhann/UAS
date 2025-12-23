import 'package:flutter/material.dart';
import 'package:lms_app/pages/tugas_page.dart';
import 'package:lms_app/pages/kuis_page.dart';

class MateriPage extends StatelessWidget {
  const MateriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materi'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.assignment),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TugasPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.quiz),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const KuisPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Judul materi
              const Text(
                'Pengenalan Pemrograman Mobile dengan Flutter',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 8),

              // Deskripsi materi
              const Text(
                'Deskripsi Materi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Materi ini membahas dasar-dasar pengembangan aplikasi mobile menggunakan framework Flutter. Mahasiswa akan belajar tentang widgets, state management, dan integrasi API.',
                  style: TextStyle(fontSize: 14, height: 1.5),
                ),
              ),
              const SizedBox(height: 24),

              // File PDF
              const Text(
                'File PDF',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 8),
              _buildResourceCard(
                'Modul 1 - Pengenalan Flutter.pdf',
                Icons.picture_as_pdf,
                Colors.red,
                () {
                  // Aksi ketika PDF diklik
                },
              ),
              _buildResourceCard(
                'Modul 2 - Widgets Dasar.pdf',
                Icons.picture_as_pdf,
                Colors.red,
                () {
                  // Aksi ketika PDF diklik
                },
              ),
              const SizedBox(height: 24),

              // Video
              const Text(
                'Video',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 8),
              _buildResourceCard(
                'Video 1 - Instalasi Flutter',
                Icons.video_library,
                Colors.blue,
                () {
                  // Aksi ketika video diklik
                },
              ),
              _buildResourceCard(
                'Video 2 - Membuat Project Pertama',
                Icons.video_library,
                Colors.blue,
                () {
                  // Aksi ketika video diklik
                },
              ),
              const SizedBox(height: 24),

              // Zoom Meeting
              const Text(
                'Zoom Meeting (Synchronous)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 8),
              _buildZoomCard(
                'Meeting Kelas - Pengenalan Flutter',
                'Rabu, 25 Desember 2025 | 09:00 - 11:00 WIB',
                'Meeting ID: 123 456 7890 | Passcode: lms123',
              ),
              const SizedBox(height: 24),

              // Lampiran materi
              const Text(
                'Lampiran Materi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 8),
              _buildResourceCard(
                'Contoh Project Flutter.zip',
                Icons.attach_file,
                Colors.orange,
                () {
                  // Aksi ketika lampiran diklik
                },
              ),
              _buildResourceCard(
                'Slide Presentasi.pdf',
                Icons.picture_as_pdf,
                Colors.red,
                () {
                  // Aksi ketika lampiran diklik
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResourceCard(
    String title,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        trailing: const Icon(Icons.download, size: 20),
        onTap: onTap,
      ),
    );
  }

  Widget _buildZoomCard(String title, String time, String meetingInfo) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.videocam, color: Colors.blue),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(time, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
            const SizedBox(height: 4),
            Text(
              meetingInfo,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol join zoom diklik
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Join Meeting',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
