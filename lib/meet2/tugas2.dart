import 'package:flutter/material.dart';

class TugasDua extends StatelessWidget {
  const TugasDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,title: Text ("Profil Saya", style: TextStyle(fontWeight: FontWeight.w700),)),
      body: Column(
        children: [
          Center(child: Text("Dewi Lestari", style: TextStyle(fontSize: 24,),),),
          SizedBox(height: 20,),
          CircleAvatar(radius: 80, backgroundImage: NetworkImage(''),),
          
          Padding(padding:EdgeInsets.all(16.0),
          child: Container(
            color:Color(Colors.blue,
            child: Text(
              
            ))
          ),)
          Container(
          padding: const EdgeInsets.all(24.4),
          margin: EdgeInsets.all(12),
          width: double,infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(24)
            ),
            border: Border.all(),
            gradient: LinearGradient(colors: [Colors.yellow, Colors.red]<
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            
            )
          ),)
        ],
        ),
    );
  }
}