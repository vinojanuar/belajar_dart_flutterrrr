import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});
  static const String id = "";

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox Contoh")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Saya menyetujui:"),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    "Saya menyetujui semua persyaratan yang berlaku",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              _isChecked
                  ? "✅ Lanjutkan Pendaftaran"
                  : "❌ Anda belum bisa melanjutkan",
              style: TextStyle(
                fontSize: 18,
                color: _isChecked ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
