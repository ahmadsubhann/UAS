import 'package:flutter/material.dart';
import 'package:lms_app/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(height: 40),

                // Logo / Judul
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Icon(
                          Icons.school,
                          size: 50,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Learning Management System',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),

                // Input Email
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),

                // Input Password
                Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                    ),
                    obscureText: true,
                  ),
                ),

                // Tombol Log In
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi login - sekarang akan membawa ke halaman utama
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Link Bantuan
                TextButton(
                  onPressed: () {
                    // Aksi bantuan
                  },
                  child: const Text(
                    'Bantuan ?',
                    style: TextStyle(color: Colors.green, fontSize: 14),
                  ),
                ),

                const SizedBox(height: 40),

                // Informasi
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Akses hanya untuk Dosen & Mahasiswa Universitas Islam Madura',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Login menggunakan akun gmail',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'Panduan login:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Username: user@uim.ac.id',
                              style: TextStyle(fontSize: 12),
                            ),
                            const Text(
                              'Password: user123',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Kontak Helpdesk:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Email: infouim@uim.ac.id',
                        style: TextStyle(fontSize: 12),
                      ),
                      const Text(
                        'WhatsApp: +62 821-1666-3563',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Bahasa: ID / EN
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Aksi ganti bahasa ke Indonesia
                      },
                      child: const Text(
                        'ID',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(' / '),
                    TextButton(
                      onPressed: () {
                        // Aksi ganti bahasa ke Inggris
                      },
                      child: const Text(
                        'EN',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
