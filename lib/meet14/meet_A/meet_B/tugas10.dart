import 'package:belajar_dart_flutter/meet14/meet_A/meet_B/konfirmasipage.dart';
import 'package:flutter/material.dart';
// halaman tujuan setelah pendaftaran

class PendaftaranPage extends StatefulWidget {
  const PendaftaranPage({super.key});

  @override
  State<PendaftaranPage> createState() => _PendaftaranPageState();
}

class _PendaftaranPageState extends State<PendaftaranPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _noHpController = TextEditingController();
  final TextEditingController _kotaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState?.validate() == true) {
      final nama = _namaController.text.trim();
      final noHp = _noHpController.text.trim();
      final kota = _kotaController.text.trim();

      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: const Text("Konfirmasi Data"),
              content: Text("Nama: $nama\nNo HP: $noHp\nKota: $kota"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // tutup dialog
                    // navigasi ke halaman konfirmasi
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:
                            (context) => KonfirmasiPage(nama: nama, kota: kota),
                      ),
                    );
                  },
                  child: const Text("OK"),
                ),
              ],
            ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Pendaftaran")),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(labelText: "Nama"),
                validator:
                    (value) =>
                        (value == null || value.isEmpty)
                            ? "Nama tidak boleh kosong"
                            : null,
              ),

              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email Tidak Boleh Kosong";
                  } else if (!value.contains('@')) {
                    return "Email Tidak Valid";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10),

              const SizedBox(height: 10),
              TextFormField(
                controller: _noHpController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(labelText: "No HP"),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "No HP tidak boleh kosong";
                  if (!RegExp(r'^[0-9]+$').hasMatch(value))
                    return "Hanya angka yang diperbolehkan";
                  if (value.length < 10 || value.length > 13)
                    return "No HP tidak valid";
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _kotaController,
                decoration: const InputDecoration(labelText: "Kota Domisili"),
                validator:
                    (value) =>
                        (value == null || value.isEmpty)
                            ? "Kota tidak boleh kosong"
                            : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text("Daftar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
