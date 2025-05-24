import 'package:flutter/material.dart';

class TugasEnam extends StatefulWidget {
  const TugasEnam({super.key});

  @override
  State<TugasEnam> createState() => _TugasEnamState();
}

class _TugasEnamState extends State<TugasEnam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

            Container(
              width: double.infinity,
              height: 50,
              color: const Color.fromARGB(255, 230, 166, 161),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Use Phone Number"),
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Email")),
                ],
              ),
            ),

            const SizedBox(height: 40),
            const Text("Phone Number"),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your phone number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 40),
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

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // aksi request OTP
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff015551),
                elevation: 0,
                minimumSize: const Size(double.infinity, 56),
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
          ],
        ),
      ),
    );
  }
}
