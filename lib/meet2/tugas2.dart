import 'package:flutter/material.dart';

class TugasDua extends StatelessWidget {
   TugasDua({super.key});
  String url='https://awsimages.detik.net.id/api/wm/2025/04/16/jokowi-1744782565643_169.jpeg?wid=54&w=650&v=1&t=jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,title: Text ("Profil Saya", style: TextStyle(fontWeight: FontWeight.w700),)),
      body: Column(
        children: [
          Center(
            child: Text(
              "Jokowi Dodo", 
              style: TextStyle(fontSize: 24,),
            ),
          ),
          SizedBox(height: 20,),
          CircleAvatar(radius: 80, backgroundImage: NetworkImage(url),),
          
          // containerpertama
          Container( 
            child: Row(
              children: [
                Icon(Icons.phone),
                Text.rich(TextSpan(text: "No Handphone : 0878784143",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)))
              ],
            ),
          padding: const EdgeInsets.all(24.4),
          margin: EdgeInsets.all(12),
          width: double.infinity,
          decoration: BoxDecoration( 
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(24)
            ),
            border: Border.all(),
            gradient: LinearGradient(colors: [Colors.yellow, Colors.red],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            
            
            )
          ),),
          
          //containerkedua
          Container(
            child: Row(
              children: [
                Icon(Icons.email),
                Text.rich(TextSpan(text: "Email : Jokowi@gmail.com",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)))
              ],
            ),
          padding: const EdgeInsets.all(24.4),
          margin: EdgeInsets.all(12),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(24)
            ),
            border: Border.all(),
            gradient: LinearGradient(colors: [Colors.yellow, Colors.red],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            
            )
          ),
          ),

        SizedBox(height: 8),
        Row(
          children: [
            Expanded(flex: 2,
            child:Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: 52,
              color: Colors.blue,
              child: Text("Postingan",
              style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            )
            ),

            Expanded(flex: 2,
            child:Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: 52,
              color: const Color.fromARGB(255, 0, 0, 0),
              child: Text("Pengikut",
              style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            )
          ],
          
        ),
        Expanded(
          flex: 2,
          child: Container(
          padding: const EdgeInsets.only(top: 20, left: 12, right:12),
          color: Colors.white,
          child: Text.rich(
            TextSpan(
              text: 
              "Jokowi Dodo - Mobile Developer, Punya Hati, pecinta coding. Tinggal di Jakarta Utara.", style: TextStyle(fontWeight: FontWeight.bold)
            )),
        ),
        ),

         Expanded(flex: 1,
            child:Container(
              padding: const EdgeInsets.all(5),
              width: double.infinity,
              height: 52,
              color: const Color.fromARGB(255, 0, 221, 0),
              child: Center(
                child: Text("CopyRight",
                style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            )
        ], 
        ),
        
    );
  }
}