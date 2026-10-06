import 'package:flutter/material.dart';
import 'package:flutter_application_5sae2/entites/game.dart';

class GameCell extends StatelessWidget {
  final Game game;
  const GameCell({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        borderOnForeground: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.asset("assets/images/${game.image}",),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Text(game.name.toUpperCase(), style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.035, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}