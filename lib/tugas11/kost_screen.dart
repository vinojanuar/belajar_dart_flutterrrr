import 'package:belajar_dart_flutter/tugas11/database/dbcase.dart';
import 'package:belajar_dart_flutter/tugas11/edit_screen.dart';
import 'package:belajar_dart_flutter/tugas11/model/model_kost.dart';
import 'package:flutter/material.dart';

class Anakkost extends StatefulWidget {
  const Anakkost({super.key});

  @override
  State<Anakkost> createState() => _AnakkostState();
}

class _AnakkostState extends State<Anakkost> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nomorHandphoneController =
      TextEditingController();
  final TextEditingController nomorKamarController = TextEditingController();
  final TextEditingController umurController = TextEditingController();

  List<Kost> daftarAnakkost = [];

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await Dbkost.getAllKost();
    setState(() {
      daftarAnakkost = data;
    });
  }

  Future<void> simpanData() async {
    final nama = namaController.text.trim();
    final nomor = int.tryParse(nomorHandphoneController.text.trim());
    final kamar = int.tryParse(nomorKamarController.text.trim());
    final umur = int.tryParse(umurController.text.trim());

    if (nama.isNotEmpty && nomor != null && kamar != null && umur != null) {
      await Dbkost().insertSiswa(
        Kost(nama: nama, nomorhandphone: nomor, nomorkamar: kamar, umur: umur),
      );
      namaController.clear();
      nomorHandphoneController.clear();
      nomorKamarController.clear();
      umurController.clear();
      muatData();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Semua data harus diisi dengan benar")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6F9),
      appBar: AppBar(
        title: const Text("Daftar Anak Kost"),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTextField(namaController, "Nama", icon: Icons.person),
            const SizedBox(height: 12),
            _buildTextField(
              nomorHandphoneController,
              "Nomor Handphone",
              isNumber: true,
              icon: Icons.phone,
            ),
            const SizedBox(height: 12),
            _buildTextField(
              nomorKamarController,
              "Nomor Kamar",
              isNumber: true,
              icon: Icons.meeting_room,
            ),
            const SizedBox(height: 12),
            _buildTextField(
              umurController,
              "Umur",
              isNumber: true,
              icon: Icons.cake,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: simpanData,
              icon: const Icon(Icons.save),
              label: const Text("Simpan"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade600,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Divider(thickness: 1.2),
            const SizedBox(height: 10),
            const Text(
              "Data Anak Kost",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: daftarAnakkost.length,
              itemBuilder: (context, index) {
                final anak = daftarAnakkost[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  elevation: 2,
                  color: Colors.white,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.shade300,
                      child: Text(
                        '${anak.id}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(
                      anak.nama,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("📱 ${anak.nomorhandphone}"),
                          Text("🚪 Kamar: ${anak.nomorkamar}"),
                          Text("🎂 Umur: ${anak.umur} tahun"),
                        ],
                      ),
                    ),
                    trailing: Row(
                      children: [
                        //Untuk Tombol Edit Cuyyy
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => EditScreen(kost: anak),
                              ),
                            );

                            muatData();
                          },
                        ),

                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () async {
                            await Dbkost().deleteKost(anak.id!);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Data Berhasil di Hapus"),
                              ),
                            );
                            muatData();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label, {
    bool isNumber = false,
    IconData? icon,
  }) {
    return TextField(
      controller: controller,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon:
            icon != null ? Icon(icon, color: Colors.blue.shade600) : null,
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black87),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue.shade100),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue.shade400),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
