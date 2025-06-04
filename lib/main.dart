import 'package:belajar_dart_flutter/meet16/database/register_screen.dart';
import 'package:belajar_dart_flutter/meet16/logins_creen.dart';
import 'package:belajar_dart_flutter/meet6/Tugas6.dart';
import 'package:belajar_dart_flutter/meet7/tugas7.dart';
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
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/login": (context) => Loginscreen(),
        "/home_screen": (context) => TugasTujuh(),
        Loginscreen.id: (context) => Loginscreen(),
        RegisterScreenApp.id: (context) => RegisterScreenApp(),

        TugasEnam.id: (context) => TugasEnam(),
        TugasTujuh.id: (context) => TugasTujuh(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Belajar Dart Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 224, 221, 216),
        ),
      ),

      // home: const PendaftaranPage(),

      // kalo pake routes + initial routes ga bisa sambil pakehome lur
    );
  }
}
