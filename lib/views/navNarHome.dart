import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/items/myDrawer.dart';
import 'package:projet_flutter_sae2/views/BiblioPage.dart';
import 'package:projet_flutter_sae2/views/Singup.dart';
import 'package:projet_flutter_sae2/views/cart.dart';
import 'package:projet_flutter_sae2/views/gStore.dart';

class NavBarHome extends StatefulWidget {
  const NavBarHome({super.key});

  @override
  State<NavBarHome> createState() => _NavBarHomeState();
}

class _NavBarHomeState extends State<NavBarHome> {
  List<Widget> interfaces = const [GStorePage(), MYBiblioPage(),MyCart()];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home Page"),
        centerTitle: true,
      ),
      drawer: Mydrawer(),
      body: interfaces[count],
      bottomNavigationBar: BottomNavigationBar(items: 
      [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Bibliothéque"),
        BottomNavigationBarItem(icon: Icon(Icons.shop_outlined), label: "Panier")
      ],
      currentIndex: count,
      onTap: (value) => setState(() {
        count = value;
      }),
      ),
    );
  }
}