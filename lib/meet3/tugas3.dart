import 'package:flutter/material.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 151, 218, 192),
        title: Text("Tugas3"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text("Masukan Data Anda"),
              SizedBox(height: 20),

              //Masukan Nama Anda
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
                    borderSide: BorderSide(color: Color(0xffCA7842), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),

              //Masukan Email
              SizedBox(height: 12),
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
                    borderSide: BorderSide(color: Color(0xffCA7842), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),

              //Masukan Handphone
              SizedBox(height: 12),
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
                    borderSide: BorderSide(color: Color(0xffCA7842), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Text("Deskripsi"),

              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "Masukan Kata-kata",
                  hintStyle: TextStyle(fontSize: 12),
                  filled: true,
                  fillColor: Color(0xffB2CD9C),
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xffCA7842), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Text("GALERI KITA"),

              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 12),
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  Container(height: 100, color: Color(0xffB2CD9C)),
                  Container(height: 100, color: Color(0xff4B352A)),
                  Container(height: 100, color: Color(0xffCA7842)),
                  Container(height: 100, color: Color(0xffF4E7E1)),
                  Container(height: 100, color: Color(0xffFF9B45)),
                  Container(height: 100, color: Color(0xffD5451B)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
