import 'package:flutter/material.dart';

class Listmap extends StatefulWidget {
  const Listmap({super.key});

  @override
  State<Listmap> createState() => _ListmapState();
}

class _ListmapState extends State<Listmap> {
  List<Map<String, dynamic>> produk = [
    {'Nama': 'Apple', 'Harga': '15000', 'icon': Icons.apple},
    {'Nama': 'Coffe', 'Harga': '15000', 'icon': Icons.coffee},
    {'Nama': 'Mangga', 'Harga': '15000', 'icon': Icons.lock_clock},
    {'Nama': 'Anggur', 'Harga': '15000', 'icon': Icons.add_location},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Produk")),
      body: ListView.builder(
        itemCount: produk.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(produk[index]["icon"]),
            title: Text(produk[index]["Nama"]),
            subtitle: Text("Rp ${produk[index]["Harga"]}"),
          );
        },
      ),
    );
  }
}