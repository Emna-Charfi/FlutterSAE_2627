import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/entities/film.dart';
import 'package:projet_flutter_sae2/items/gStoreItem.dart';

class GStorePage extends StatelessWidget {
  const GStorePage({super.key});

  @override
  Widget build(BuildContext context) {
   final List<Film> films = [
      //Film("House Of Dead", "HouseOfDead ", 225, "HouseOfDead.jpg"),
      Film("Iceroad", "HouseOfDead ", 100, "iceroad.jpg"),
      Film("The Abyss", "HouseOfDead ", 115, "theabyss.jpg"),
      Film("The Grudge", "HouseOfDead ", 200, "thegrudge.jpg")
   ];
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("G-Store", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      //   centerTitle: true,
      //   backgroundColor: Colors.black,
      // ),
      body: 
      ListView.builder(itemBuilder:  (BuildContext context, int index) {
          return GStoreItem(film: films[index]);
    },
      itemCount: films.length,
      )
      /* ListView(
        children: [
          GStoreItem(film: films[0]),
          GStoreItem(film: films[1]),
          GStoreItem(film: films[2]),
          GStoreItem(film: films[3]),
          
        ],
      ), */
    );
  }
}