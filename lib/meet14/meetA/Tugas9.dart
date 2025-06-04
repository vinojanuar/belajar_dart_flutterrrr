import 'package:belajar_dart_flutter/meet14/meetA/listmap.dart';
import 'package:belajar_dart_flutter/meet14/meetA/listview.dart';
import 'package:belajar_dart_flutter/meet14/meetA/model.dart';
import 'package:belajar_dart_flutter/meet14/meetA/listmap.dart';
import 'package:belajar_dart_flutter/meet14/meetA/listview.dart';
import 'package:belajar_dart_flutter/meet14/meetA/model.dart';
import 'package:belajar_dart_flutter/meet7/datepicker.dart';
import 'package:belajar_dart_flutter/meet7/timepicker.dart';
import 'package:flutter/material.dart';

class TugasSembilan extends StatefulWidget {
  const TugasSembilan({super.key});

  @override
  State<TugasSembilan> createState() => _TugasSembilanState();
}

class _TugasSembilanState extends State<TugasSembilan> {
  int _tabIndex = 0;
  int _drawerIndex = 0;

  // Halaman drawer (Home tab)
  final List<Widget> _homeScreens = [
    ListView14(),
    Listmap(),
    ModelList(),
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
        title: Text(_tabIndex == 0 ? "Tugas 9" : "Tentang Aplikasi"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 7, 197, 218),
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
                              "assets/images/fotopass.jpg",
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
                      title: Text('List'),
                      onTap: () => _onDrawerTapped(0),
                    ),
                    ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text('List Produk'),
                      onTap: () => _onDrawerTapped(1),
                    ),
                    ListTile(
                      leading: Icon(Icons.category),
                      title: Text('Kategori Produk'),
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