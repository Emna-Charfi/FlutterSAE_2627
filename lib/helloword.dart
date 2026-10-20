import 'package:flutter/material.dart';

class MyHelloWord extends StatelessWidget {
  const MyHelloWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("My first page", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        alignment: Alignment.topCenter,
        child: Text("Hello word!",
        textAlign: TextAlign.center,
         style: TextStyle(fontSize: 25),),
      ),
    );
  }
}