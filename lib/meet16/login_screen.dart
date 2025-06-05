import 'package:belajar_dart_flutter/meet1/tugas1.dart';
import 'package:belajar_dart_flutter/meet16/database/register_screen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});
  static const String id = "/loginscreen";

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 36),
            const Text(
              "Welcome Back",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            const Text(
              "Sign In to your Account",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 36),
            const Text("Email Adrees"),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter your phone number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            // Input Phone Number
            const SizedBox(height: 10),
            const Text("Nama"),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter your phone number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            // Input Password
            const SizedBox(height: 10),
            const Text("Password"),
            const SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            // Tombol Request OTP
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TugasSatu()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff21BDCA),
                elevation: 0,
                minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Request OTP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),

            // Teks tambahan
            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(color: const Color.fromARGB(255, 70, 69, 69)),
                ),
                Expanded(
                  child: Text(
                    "Or Sign In With",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Divider(color: const Color.fromARGB(255, 74, 73, 73)),
                ),
              ],
            ),

            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 155,
                  height: 50,

                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 174, 169, 169),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Image.asset(
                          "assets/images/iconGoogle.png",
                          width: 24,
                          height: 25,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Google",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 155,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 174, 169, 169),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Image.asset(
                          "assets/images/logofb.png",
                          width: 24,
                          height: 25,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterScreenApp.id);
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff21BDCA),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
