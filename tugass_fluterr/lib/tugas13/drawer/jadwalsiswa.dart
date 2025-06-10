import 'package:flutter/material.dart';

class JadwalSiswa extends StatefulWidget {
  const JadwalSiswa({super.key});

  @override
  State<JadwalSiswa> createState() => _JadwalSiswaState();
}

class _JadwalSiswaState extends State<JadwalSiswa> {
  // Jadwal per hari
  final Map<String, List<String>> _jadwal = {
    'Senin': ['Matematika', 'Bahasa Indonesia', 'IPA'],
    'Selasa': ['IPS', 'Bahasa Inggris', 'Pendidikan Agama'],
    'Rabu': ['PJOK', 'Seni Budaya', 'Matematika'],
    'Kamis': ['IPA', 'Bahasa Indonesia', 'TIK'],
    'Jumat': ['Pendidikan Kewarganegaraan', 'Bahasa Inggris'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jadwal Mata Pelajaran'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                _jadwal.entries.map((entry) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entry.key,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ...entry.value.map(
                            (mapel) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                children: [
                                  const Icon(Icons.book, size: 20),
                                  const SizedBox(width: 8),
                                  Text(
                                    mapel,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}
