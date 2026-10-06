import 'package:flutter/material.dart';
import 'package:flutter_application_5sae2/views/game_grid.dart';
import 'package:flutter_application_5sae2/views/home_page.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
   final List<Widget> interfaces = const [ HomePage(), GameGrid()];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My home page"),),
        body: interfaces[count],
        bottomNavigationBar: BottomNavigationBar(items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.games), label: "Game"),
        ],
        currentIndex: count,
        onTap: (value) => setState(() {
          count= value;
        }),
        
        ) ,
    );
  }
}