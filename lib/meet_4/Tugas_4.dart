import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 151, 218, 192),
        title: Text("TokoPedia", style: TextStyle(fontWeight: FontWeight.w600)),
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
                Text(
                  "Deskripsi",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: "Tulis disini",
                    prefixIcon: Icon(Icons.description),
                    hintStyle: TextStyle(fontSize: 14),
                    filled: true,
                    fillColor: Color(0xffB2CD9C),

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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 4,
                  child: ListTile(
                    leading: Image.asset("assets/images/Asset10.jpg"),
                    title: Text("Jersey Indonesia"),
                    shape: Border.all(width: 1),
                    trailing: Icon(Icons.add_shopping_cart_outlined),
                    subtitle: Text("Price: 10.320.000"),
                  ),
                ),
              ],
            ),
          ),

          //Padding 2
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Card(
                  elevation: 4,
                  child: ListTile(
                    leading: Image.asset("assets/images/Asset9.jpg"),
                    title: Text("Jersey Al Nassr"),
                    shape: Border.all(width: 1),
                    trailing: Icon(Icons.add_shopping_cart_outlined),
                    subtitle: Text("Price: 2.700.000"),
                  ),
                ),
              ],
            ),
          ),

          //Padding 3
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Card(
                  elevation: 4,
                  child: ListTile(
                    leading: Image.asset("assets/images/Asset5.jpg"),
                    title: Text("Jersey Barcelona"),
                    shape: Border.all(width: 1),
                    trailing: Icon(Icons.add_shopping_cart_outlined),
                    subtitle: Text("Price: 5.900.000"),
                  ),
                ),
              ],
            ),
          ),

          // Pading 4
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Card(
                  elevation: 4,
                  child: ListTile(
                    leading: Image.asset("assets/images/Asset7.jpg"),
                    title: Text("Jersey Atletico Madrid"),
                    shape: Border.all(width: 1),
                    trailing: Icon(Icons.add_shopping_cart_outlined),
                    subtitle: Text("Price: 1.800.000"),
                  ),
                ),
              ],
            ),
          ),

          //Padding 5
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Card(
                  elevation: 4,
                  child: ListTile(
                    leading: Image.asset("assets/images/Asset8.jpg"),
                    title: Text("Jersey Paris Saint Germain "),
                    shape: Border.all(width: 1),
                    trailing: Icon(Icons.add_shopping_cart_outlined),
                    subtitle: Text("Price: 2.400.000"),
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
