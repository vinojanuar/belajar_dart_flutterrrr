import 'package:belajar_dart_flutter/meet14/produkmodel.dart';
import 'package:flutter/material.dart';

class ModelList extends StatefulWidget {
  const ModelList({super.key});

  @override
  State<ModelList> createState() => _ModelListState();
}

class _ModelListState extends State<ModelList> {
  final List<Productmodel> dataProduck = [
    Productmodel(
      id: "1",
      productName: "Bantex",
      productPrice: "10.000",
      productImage: "assets/images/bantex.webp",
    ),

    Productmodel(
      id: "1",
      productName: "Clipboard",
      productPrice: "20.000",
      productImage: "assets/images/clipboard.webp",
    ),

    Productmodel(
      id: "1",
      productName: "Gunting",
      productPrice: "5.000",
      productImage: "assets/images/gunting.webp",
    ),

    Productmodel(
      id: "1",
      productName: "Pemotong Kertas",
      productPrice: "500.000",
      productImage: "assets/images/pemotongkertas.webp",
    ),

    Productmodel(
      id: "1",
      productName: "Penanda Halaman",
      productPrice: "5.000",
      productImage: "assets/images/penandahalaman.webp",
    ),

    Productmodel(
      id: "1",
      productName: "Penghapus",
      productPrice: "1.000",
      productImage: "assets/images/penghapus.webp",
    ),
    Productmodel(
      id: "1",
      productName: "PenHolder",
      productPrice: "20.000",
      productImage: "assets/images/penholder.webp",
    ),
    Productmodel(
      id: "1",
      productName: "Pulpen",
      productPrice: "30.000",
      productImage: "assets/images/pulpen.png",
    ),
    Productmodel(
      id: "1",
      productName: "Serutan",
      productPrice: "45.000",
      productImage: "assets/images/serutan.webp",
    ),
    Productmodel(
      id: "1",
      productName: "Stabilo",
      productPrice: "10.000",
      productImage: "assets/images/stabilo.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dataProduck.length,
        itemBuilder: (BuildContext context, int index) {
          final produck = dataProduck[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(produck.productImage ?? ""),
            ),
            title: Text(produck.productName ?? ""),
            subtitle: Text("Rp. ${produck.productPrice}"),
          );
        },
      ),
    );
  }
}
