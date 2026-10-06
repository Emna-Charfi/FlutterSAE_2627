import 'package:flutter/material.dart';
import 'package:flutter_application_5sae2/BD/db.dart';
import 'package:flutter_application_5sae2/entites/game.dart';

class DetailsGame extends StatefulWidget {
  final Game game;
  const DetailsGame({super.key, required this.game});

  @override
  State<DetailsGame> createState() => _DetailsGameState();
}

class _DetailsGameState extends State<DetailsGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.game.name.toUpperCase() , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_sharp),onPressed: () => Navigator.pop(context),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 20, 2, 30),
                child: Image.asset("assets/images/${widget.game.image}"),
              ),
          
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Il existe plusieurs jeux portant le nom « Abyss », mais les plus notables sont Abyss, un jeu de société de stratégie où l'on prend le contrôle de lieux marins grâce à des alliés et des seigneurs des profondeurs, et The Abyss, un jeu d'horreur en vue subjective qui vous plonge dans un monde cauchemardesque après un accident. "
                ,style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              Text("${widget.game.prix} DT" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              ElevatedButton.icon(onPressed: () async{
                await BD.addItem(widget.game);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("${widget.game.name} game ajoute au panier!"))
                );
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange
              ),
              label: Text("Acheter", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              icon: Icon(Icons.shopping_cart, color: Colors.white,),
              )
            
            ],
          ),
        ),
      ),
    );
  }
}