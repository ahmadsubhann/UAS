import 'package:flutter/material.dart';

class KelasPage extends StatelessWidget {
  const KelasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelas'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(child: Text('Kelas Page')),
    );
  }
}
