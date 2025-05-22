import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 151, 218, 192),
        title: Text("TokoPedia"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Masukan Nama Anda
                TextField(
                  decoration: InputDecoration(
                    hintText: "Masukan Nama",
                    prefixIcon: Icon(Icons.person),
                    hintStyle: TextStyle(fontSize: 12),
                    filled: true,
                    fillColor: Color(0xffB2CD9C),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xffCA7842),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Masukan Email
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    hintStyle: TextStyle(fontSize: 12),
                    filled: true,
                    fillColor: Color(0xffB2CD9C),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xffCA7842),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Masukan No Handphone
                TextField(
                  decoration: InputDecoration(
                    hintText: "No Handphone",
                    prefixIcon: Icon(Icons.phone),
                    hintStyle: TextStyle(fontSize: 12),
                    filled: true,
                    fillColor: Color(0xffB2CD9C),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xffCA7842),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 226, 22, 22),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Masukan Deskripsi
                TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: "Deskripsi",
                    prefixIcon: Icon(Icons.description),
                    hintStyle: TextStyle(fontSize: 14),
                    filled: true,
                    fillColor: Color(0xffB2CD9C),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xffCA7842),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),

          // Product Cart Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Product Cart",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 4,
                  child: ListTile(
                    leading: Image.asset("assets/images/asset2.jpg"),
                    title: Text("Nama Produk"),
                    subtitle: Text("Deskripsi singkat produk."),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
