import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/entities/film.dart';
import 'package:projet_flutter_sae2/items/cartItem.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Film> films = [
      //Film("House Of Dead", "HouseOfDead ", 225, "HouseOfDead.jpg"),
      //Film("Iceroad", "HouseOfDead ", 100, "iceroad.jpg"),
      Film("The Abyss", "HouseOfDead ", 115, "theabyss.jpg"),
      Film("The Grudge", "HouseOfDead ", 200, "thegrudge.jpg")
   ];
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        centerTitle: true,
      ),
      body:ListView.builder(itemBuilder:
       (BuildContext context, int index) {
          return CartItem(film: Film("The Grudge", "HouseOfDead ", 200, "thegrudge.jpg"));
    },
      itemCount: films.length,)
    );
  }
}