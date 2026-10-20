import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/entities/film.dart';
import 'package:projet_flutter_sae2/items/BiblioItem.dart';

class MYBiblioPage extends StatelessWidget {
  const MYBiblioPage({super.key});

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
      //   title: Text("My Biblio"),
      //   centerTitle: true,
      // ),
      body:Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, ),
         itemBuilder: (BuildContext context, int index) {
          return Biblioitem(film:films[index] )   ;       
        },
         itemCount: films.length,)
      )
    );
  }
}