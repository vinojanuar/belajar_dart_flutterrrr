import 'package:belajar_dart_flutter/studycase/database/studycase.dart';
import 'package:belajar_dart_flutter/studycase/model/siswa_model.dart';
import 'package:flutter/material.dart';

class SiswaScreen extends StatefulWidget {
  const SiswaScreen({super.key});

  @override
  State<SiswaScreen> createState() => _SiswaScreenState();
}

class _SiswaScreenState extends State<SiswaScreen> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController umurController = TextEditingController();

  // final DBHelper dbHelper = DBHelper(); // ✅ Buat objek DBHelper
  List<Siswa> daftarSiswa = [];

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DBHelper().getAllSiswa(); // ✅ Panggil melalui objek
    setState(() {
      daftarSiswa = data;
    });
  }

  Future<void> simpanData() async {
    final nama = namaController.text;
    final umur = int.tryParse(umurController.text.trim()) ?? 0;

    if (nama.isNotEmpty && umur > 0) {
      await DBHelper().insertSiswa(
        Siswa(nama: nama, umur: umur),
      ); // ✅ Panggil melalui objek
      namaController.clear();
      umurController.clear();
      muatData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pendaftaran Siswa")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: umurController,
              decoration: InputDecoration(labelText: 'Umur'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: simpanData, child: Text('Simpan')),
            Divider(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: daftarSiswa.length,
                itemBuilder: (context, index) {
                  final siswa = daftarSiswa[index];
                  return ListTile(
                    leading: CircleAvatar(child: Text('${siswa.id}')),
                    title: Text(siswa.nama),
                    subtitle: Text('Umur: ${siswa.umur}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
