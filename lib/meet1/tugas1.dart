
import 'package:flutter/material.dart';

class TugasSatu extends StatefulWidget {
  const TugasSatu({super.key});

  @override
  State<TugasSatu> createState() => _TugasSatuState();
}

class _TugasSatuState extends State<TugasSatu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 196, 3),
        title: Text("Profil Saya"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: "Nama : Delviano Sefrinan J.L",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.location_on_rounded),
              Text(
                "Jakarta Utara",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Seseorang Pelajar PPKD Jakarta Pusat",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
