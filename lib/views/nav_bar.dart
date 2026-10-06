import 'package:flutter/material.dart';
import 'package:flutter_application_5sae2/items/my_drawer.dart';
import 'package:flutter_application_5sae2/views/game_grid.dart';
import 'package:flutter_application_5sae2/views/home_page.dart';
import 'package:flutter_application_5sae2/views/signin.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(title: Text("My home NavBar"),
      bottom: TabBar(tabs: 
      [
        Tab(icon: Icon(Icons.home),
        text: "Home",
        ),
        Tab(
          icon: Icon(Icons.games),
          text: "Game",
        ),
        Tab(
          icon: Icon(Icons.person),
          text: "Profil",
        )
      ]
      ),
      ),
      body: TabBarView(children: [HomePage(), GameGrid(), SigninPage()]) ,
      drawer: MyDrawer(),
    ));
  }
}