import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/entities/film.dart';
import 'package:projet_flutter_sae2/items/gStoreItem.dart';
import 'package:projet_flutter_sae2/services/filmService.dart';

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
     FutureBuilder(
        future: FilmService().getAll()
      
      , builder: (context, snapshot) {
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) => GStoreItem(film: snapshot.data![index]),
          );
        }
        else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },)
      
    );
  }
}