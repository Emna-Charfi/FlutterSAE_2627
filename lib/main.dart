import 'package:flutter/material.dart';
import 'package:flutter_application_5sae2/entites/game.dart';
import 'package:flutter_application_5sae2/views/details_game.dart';
import 'package:flutter_application_5sae2/views/game_grid.dart';
import 'package:flutter_application_5sae2/views/homeNavBar.dart';
import 'package:flutter_application_5sae2/views/home_page.dart';
import 'package:flutter_application_5sae2/views/nav_bar.dart';
import 'package:flutter_application_5sae2/views/signin.dart';
import 'package:flutter_application_5sae2/views/signup2.dart';
import 'package:flutter_application_5sae2/views/singup.dart';


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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        "/": (context)=> MyHomeNavBar(),
       //"/": (context)=> NavBarPage(),
        "/home": (context)=> HomePage(),
        "/game":(context) => GameGrid(),
        "/singup": (context)=> Singup(),
        "/singin": (context)=> SigninPage()
      },
     // home: Singup(),
    );
  }
}

