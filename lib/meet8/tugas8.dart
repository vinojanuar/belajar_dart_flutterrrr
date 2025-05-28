import 'package:flutter/material.dart';

class TugasDelapan extends StatefulWidget {
  const TugasDelapan({super.key});

  @override
  State<TugasDelapan> createState() => _TugasDelapanState();
}

class _TugasDelapanState extends State<TugasDelapan> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home", style: TextStyle(fontSize: 24))),
    AboutPage(), // Gunakan halaman AboutPage yang benar
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Tentang'),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: const [
          Text(
            'Tentang Aplikasi',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Ini adalah aplikasi contoh yang dibuat untuk latihan Flutter. '
            'Aplikasi ini menunjukkan penggunaan BottomNavigationBar, '
            'halaman statis, dan pengelolaan state dengan StatefulWidget.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            'Ini adalah aplikasi contoh yang dibuat untuk latihan Flutter. '
            'Aplikasi ini menunjukkan penggunaan BottomNavigationBar, '
            'halaman statis, dan pengelolaan state dengan StatefulWidget.',
            style: TextStyle(fontSize: 16),
          ),

          SizedBox(height: 10),
          Text(' Pembuat Vino Januar', style: TextStyle(fontSize: 16)),

          SizedBox(height: 10),
          Text(' Versi: 1.0.0', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
