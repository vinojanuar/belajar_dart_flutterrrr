import 'package:belajar_dart_flutter/meet7/checkbox.dart';
import 'package:belajar_dart_flutter/meet7/datepicker.dart';
import 'package:belajar_dart_flutter/meet7/modegelap.dart';
import 'package:belajar_dart_flutter/meet7/pilihkategori.dart';
import 'package:belajar_dart_flutter/meet7/timepicker.dart';
import 'package:flutter/material.dart';

class TugasTujuh extends StatefulWidget {
  const TugasTujuh({super.key});

  @override
  State<TugasTujuh> createState() => _TugasTujuhState();
}

class _TugasTujuhState extends State<TugasTujuh> {
  int _tabIndex = 0;
  int _drawerIndex = 0;

  // Halaman drawer (Home tab)
  final List<Widget> _homeScreens = [
    CheckboxPage(),
    Modegelap(),
    Pilihkategori(),
    Datepicker(),
    Timepicker(),
  ];

  // Halaman deskripsi aplikasi
  final Widget _aboutPage = Padding(
    padding: EdgeInsets.all(16),
    child: ListView(
      children: const [
        Text(
          'Tentang Aplikasi',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Ini adalah aplikasi latihan Flutter yang menampilkan navigasi bawah, drawer, '
          'dan beberapa fitur seperti checkbox, switch, dropdown, datepicker, dan timepicker.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 16),
        Text('Pembuat: Vino Januar', style: TextStyle(fontSize: 16)),
        SizedBox(height: 4),
        Text('Versi: 1.0.0', style: TextStyle(fontSize: 16)),
      ],
    ),
  );

  void _onBottomNavTapped(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  void _onDrawerTapped(int index) {
    setState(() {
      _drawerIndex = index;
      Navigator.pop(context); // Tutup drawer setelah klik
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tabIndex == 0 ? "Tugas 7" : "Tentang Aplikasi"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

      // Drawer hanya aktif di tab Home
      drawer:
          _tabIndex == 0
              ? Drawer(
                child: ListView(
                  children: [
                    const DrawerHeader(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 15, 187, 210),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              "assets/images/asset2.jpg",
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Vino Januar",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.rule),
                      title: Text('Syarat dan Ketentuan'),
                      onTap: () => _onDrawerTapped(0),
                    ),
                    ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text('Mode Gelap'),
                      onTap: () => _onDrawerTapped(1),
                    ),
                    ListTile(
                      leading: Icon(Icons.category),
                      title: Text('Pilih Kategori Produk'),
                      onTap: () => _onDrawerTapped(2),
                    ),
                    ListTile(
                      leading: Icon(Icons.date_range),
                      title: Text('Pilih Tanggal Lahir'),
                      onTap: () => _onDrawerTapped(3),
                    ),
                    ListTile(
                      leading: Icon(Icons.punch_clock),
                      title: Text('Atur Pengingat'),
                      onTap: () => _onDrawerTapped(4),
                    ),
                  ],
                ),
              )
              : null,

      // Konten halaman berdasarkan tab
      body: _tabIndex == 0 ? _homeScreens[_drawerIndex] : _aboutPage,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabIndex,
        onTap: _onBottomNavTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Tentang'),
        ],
      ),
    );
  }
}
