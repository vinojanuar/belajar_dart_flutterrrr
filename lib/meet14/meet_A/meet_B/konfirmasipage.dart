import 'package:flutter/material.dart';

class KonfirmasiPage extends StatelessWidget {
  final String nama;
  final String kota;

  const KonfirmasiPage({super.key, required this.nama, required this.kota});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Konfirmasi")),
      body: Center(
        child: Text(
          "Terima kasih, $nama dari $kota telah mendaftar.",
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
