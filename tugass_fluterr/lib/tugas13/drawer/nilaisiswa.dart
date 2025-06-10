import 'package:flutter/material.dart';

class NilaiSiswa extends StatefulWidget {
  const NilaiSiswa({super.key});

  @override
  State<NilaiSiswa> createState() => _NilaiSiswaState();
}

class _NilaiSiswaState extends State<NilaiSiswa> {
  final Map<String, dynamic> _dataSiswa = {
    'nama': 'Vino Januar',
    'nilai': {
      'Matematika': 85,
      'Bahasa Indonesia': 90,
      'IPA': 88,
      'IPS': 87,
      'Bahasa Inggris': 92,
      'Pendidikan Kewarganegaraan': 89,
    },
  };

  @override
  Widget build(BuildContext context) {
    final nilaiMap = _dataSiswa['nilai'] as Map<String, int>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Nilai Siswa'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  'Nama: ${_dataSiswa['nama']}',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Nilai Mata Pelajaran:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 12),
                ...nilaiMap.entries.map(
                  (entry) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(entry.key, style: const TextStyle(fontSize: 16)),
                        Text(
                          entry.value.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
