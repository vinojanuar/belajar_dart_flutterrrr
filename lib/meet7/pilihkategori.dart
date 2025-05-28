import 'package:flutter/material.dart';

class Pilihkategori extends StatefulWidget {
  const Pilihkategori({super.key});

  @override
  State<Pilihkategori> createState() => _PilihkategoriState();
}

class _PilihkategoriState extends State<Pilihkategori> {
  String? isSelected;
  final List<String> _colors = ['Elektronik', 'Pakaian', 'Makanan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pilih Kategori")), // optional
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // biar dropdown ke kiri
          children: [
            Text("Pilih Produk:"),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: isSelected,
              hint: Text("Pilih Produk"),
              items:
                  _colors.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              onChanged: (String? value) {
                setState(() {
                  isSelected = value;
                });
              },
            ),
            SizedBox(height: 20),
            if (isSelected != null) Text("Produk dipilih: $isSelected"),
          ],
        ),
      ),
    );
  }
}
