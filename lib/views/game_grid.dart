import 'package:flutter/material.dart';
import 'package:flutter_application_5sae2/entites/game.dart';
import 'package:flutter_application_5sae2/items/game_cell.dart';

class GameGrid extends StatelessWidget {
  const GameGrid({super.key});

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
        title: Text("Games", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),),
        centerTitle: true,
      ),
      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0, // spacing between columns
          mainAxisSpacing: 8.0, // spacing between rows
          childAspectRatio: 1.0,
          ),
        itemCount: games.length, 
        itemBuilder: (context, index) {
          return GameCell(game: games[index]);
        },
        ),
    );
  }
}