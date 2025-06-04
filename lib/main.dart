import 'package:belajar_dart_flutter/meet14/meetC/drawer.dart';
import 'package:belajar_dart_flutter/meet6/Tugas6.dart';
import 'package:belajar_dart_flutter/meet7/tugas7.dart';
import 'package:belajar_dart_flutter/studycase/siswa_screen.dart';
import 'package:belajar_dart_flutter/utils/splash_screen.dart';
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
      title: 'Siswa App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SiswaScreen(),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => SplashScreen(),
      //   "/login": (context) => TugasEnam(),
      //   "/home_screen": (context) => TugasTujuh(),

      //   TugasEnam.id: (context) => TugasEnam(),
      //   TugasTujuh.id: (context) => TugasTujuh(),
      // },
      // debugShowCheckedModeBanner: false,
      // title: 'Belajar Dart Flutter',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.white10),
      // ),
      // home: const DrawerSatu(),

      // kalo pake routes + initial routes ga bisa sambil pakehome lur
    );
  }
}
