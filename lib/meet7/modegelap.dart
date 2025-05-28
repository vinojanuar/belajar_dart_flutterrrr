import 'package:flutter/material.dart';

class Modegelap extends StatefulWidget {
  const Modegelap({super.key});

  @override
  State<Modegelap> createState() => _ModegelapState();
}

class _ModegelapState extends State<Modegelap> {
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSwitchOn ? Colors.black : Colors.white,
      body: Column(
        children: [
          SizedBox(height: 24),
          Row(
            children: [
              Switch(
                value: isSwitchOn,
                onChanged: (value) {
                  print(isSwitchOn);
                  setState(() {
                    isSwitchOn = value;
                  });
                },
              ),
              Text(
                isSwitchOn ? "Mode Terang" : "Mode Gelap",
                style: TextStyle(
                  fontSize: isSwitchOn ? 25 : 18,
                  color: isSwitchOn ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
