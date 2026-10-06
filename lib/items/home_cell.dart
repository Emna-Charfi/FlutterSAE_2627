import 'package:flutter/material.dart';
import 'package:flutter_application_5sae2/entites/game.dart';
import 'package:flutter_application_5sae2/views/details_game.dart';

class HomeCell extends StatelessWidget {
  final Game game;
  const HomeCell({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: 
        (context) => DetailsGame(game: game),));
      },
      child: Card(
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset("assets/images/${game.image}", width: double.infinity,height: MediaQuery.of(context).size.height*0.3,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(game.name, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    Icon(Icons.star, size: 30, color: Colors.amber,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}