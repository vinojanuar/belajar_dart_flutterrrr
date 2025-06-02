import 'package:belajar_dart_flutter/meet14/Tugas9.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Dart Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 224, 221, 216),
        ),
      ),

      home: const TugasSembilan(),

      // kalo pake routes + initial routes ga bisa sambil pakehome lur
    );
  }
}
