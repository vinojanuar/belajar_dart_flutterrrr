import 'package:belajar_dart_flutter/meet7/tugas7.dart';
import 'package:belajar_dart_flutter/tugas11/kost_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anak Kost',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TugasTujuh(),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => SplashScreen(),
      //   "/login": (context) => TugasEnam(),
      //   "/home_screen": (context) => TugasTujuh(),
      //   TugasEnam.id: (context) => TugasEnam(),
      //   TugasTujuh.id: (context) => TugasTujuh(),
      // },
    );
  }
}
