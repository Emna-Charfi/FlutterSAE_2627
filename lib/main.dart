import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/entities/film.dart';
import 'package:projet_flutter_sae2/helloword.dart';
import 'package:projet_flutter_sae2/views/BiblioPage.dart';
import 'package:projet_flutter_sae2/views/Singup.dart';
import 'package:projet_flutter_sae2/views/cart.dart';
import 'package:projet_flutter_sae2/views/detailsFilm.dart';
import 'package:projet_flutter_sae2/views/gStore.dart';
import 'package:projet_flutter_sae2/views/navNarHome.dart';
import 'package:projet_flutter_sae2/views/singin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes:{
        "/": (context)=> SigninPage(),
        "/home": (context) => NavBarHome(),
        "/gStore" : (context) => GStorePage(),
        "/singup" : (context) => SingupPage()
      }
      //DetailsGame(film: Film("House Of Dead", "House of the Dead, ou House of the Dead : Le jeu ne fait que commencer[1] au Québec, est un film américano-canado-allemand réalisé par Uwe Boll, sorti en 2003. C'est une adaptation du jeu vidéo éponyme. Sa suite House of the Dead 2 est sortie en 2005 sur Sci Fi Channel. ", 225, "HouseOfDead.jpg")),
    );
  }
}

