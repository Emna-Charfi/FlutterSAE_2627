import 'package:flutter/material.dart';
import 'package:flutter_application_5sae2/entites/game.dart';
import 'package:flutter_application_5sae2/items/home_cell.dart';
import 'package:flutter_application_5sae2/items/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Game> games = [
      Game("HouseOfDead.jpg", "HouseOfDead", 225),
      Game("iceroad.jpg", "iceroad", 300),
      Game("theabyss.jpg", "theabyss", 150),
      Game("thegrudge.jpg", "thegrudge", 300)
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("G-Store", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor:Colors.black,
      ),
      drawer: MyDrawer(),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) => HomeCell(game: games[index]),
        ),
    );
  }
}