import 'package:belajar_dart_flutter/tugas11/database/dbcase.dart';
import 'package:belajar_dart_flutter/tugas11/model/model_kost.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  final Kost kost;

  const EditScreen({super.key, required this.kost});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  late TextEditingController namaController;
  late TextEditingController nomorHandphoneController;
  late TextEditingController nomorKamarController;
  late TextEditingController umurController;

  @override
  void initState() {
    super.initState();
    namaController = TextEditingController(text: widget.kost.nama);
    nomorHandphoneController = TextEditingController(
      text: widget.kost.nomorhandphone.toString(),
    );
    nomorKamarController = TextEditingController(
      text: widget.kost.nomorkamar.toString(),
    );
    umurController = TextEditingController(text: widget.kost.umur.toString());
  }

  void update() async {
    final nama = namaController.text.trim();
    final nomor = int.tryParse(nomorHandphoneController.text.trim());
    final kamar = int.tryParse(nomorKamarController.text.trim());
    final umur = int.tryParse(umurController.text.trim());

    if (nama.isNotEmpty && nomor != null && kamar != null && umur != null) {
      final updated = Kost(
        id: widget.kost.id,
        nama: nama,
        nomorhandphone: nomor,
        nomorkamar: kamar,
        umur: umur,
      );
      await Dbkost().updateKost(updated);
      Navigator.pop(context); // kembali ke halaman sebelumnya
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Semua data harus diisi dengan benar")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Anak Kost'),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTextField(namaController, "Nama"),
            _buildTextField(
              nomorHandphoneController,
              "Nomor Handphone",
              isNumber: true,
            ),
            _buildTextField(
              nomorKamarController,
              "Nomor Kamar",
              isNumber: true,
            ),
            _buildTextField(umurController, "Umur", isNumber: true),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: update,
              icon: const Icon(Icons.save),
              label: const Text("Update"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade600,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
              ),
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
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
