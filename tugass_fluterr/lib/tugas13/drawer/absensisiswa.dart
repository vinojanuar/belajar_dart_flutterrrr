import 'package:flutter/material.dart';

class AbsensiSiswa extends StatefulWidget {
  const AbsensiSiswa({super.key});

  @override
  State<AbsensiSiswa> createState() => _AbsensiSiswaState();
}

class _AbsensiSiswaState extends State<AbsensiSiswa> {
  // Contoh daftar siswa
  final List<String> siswaList = ['Andi', 'Budi', 'Citra', 'Dewi'];

  // Status absensi tiap siswa (default: null)
  final Map<String, String?> absensi = {};

  @override
  void initState() {
    super.initState();
    for (var siswa in siswaList) {
      absensi[siswa] = null; // Belum diisi
    }
  }

  // List pilihan absensi
  final List<String> status = ['Hadir', 'Izin', 'Alfa'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Absensi Siswa')),
      body: ListView.builder(
        itemCount: siswaList.length,
        itemBuilder: (context, index) {
          final nama = siswaList[index];
          return ListTile(
            title: Text(nama),
            trailing: DropdownButton<String>(
              value: absensi[nama],
              hint: const Text("Pilih"),
              items:
                  status.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              onChanged: (selected) {
                setState(() {
                  absensi[nama] = selected;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Simulasi simpan data
          showDialog(
            context: context,
            builder:
                (_) => AlertDialog(
                  title: const Text("Data Absensi"),
                  content: SizedBox(
                    width: double.maxFinite,
                    child: ListView(
                      shrinkWrap: true,
                      children:
                          absensi.entries.map((e) {
                            return ListTile(
                              title: Text(e.key),
                              subtitle: Text(e.value ?? "Belum diisi"),
                            );
                          }).toList(),
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Tutup"),
                    ),
                  ],
                ),
          );
        },
        label: const Text("Simpan"),
        icon: const Icon(Icons.save),
      ),
    );
  }
}
