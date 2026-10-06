import 'package:flutter/material.dart';
import 'package:flutter_application_5sae2/items/my_drawer.dart';
import 'package:flutter_application_5sae2/views/MyCart.dart';
import 'package:flutter_application_5sae2/views/game_grid.dart';
import 'package:flutter_application_5sae2/views/home_page.dart';
import 'package:flutter_application_5sae2/views/signin.dart';

class MyHomeNavBar extends StatefulWidget {
  const MyHomeNavBar({super.key});

  @override
  State<MyHomeNavBar> createState() => _MyHomeNavBarState();
}

class _MyHomeNavBarState extends State<MyHomeNavBar> {
  final List<Widget> interfaces = const [HomePage(), GameGrid(), MyCart()];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Home Page AppBar"),),
      drawer: MyDrawer(),
      body: interfaces[count],
      bottomNavigationBar: BottomNavigationBar(items: 
      const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "HomePage"),
        BottomNavigationBarItem(icon: Icon(Icons.games), label: "Game"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),label: "Cart")
      ],
      currentIndex: count,
      onTap: (value) => setState(() {
        count= value;
      }),
      ),
    );
  }
}