import 'package:flutter/material.dart';

class DrawerSatu extends StatefulWidget {
  const DrawerSatu({super.key});

  @override
  State<DrawerSatu> createState() => _DrawerSatuState();
}

class _DrawerSatuState extends State<DrawerSatu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text(
          "Drawer",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              color: Colors.amber,
              padding: EdgeInsets.only(right: 10),
              child: Center(
                child: Text(
                  "Vino Januar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
