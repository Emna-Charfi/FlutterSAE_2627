import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/views/gStore.dart';
import 'package:projet_flutter_sae2/views/navNarHome.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          //DrawerHeader(child: Image.asset("assets/images/esprit.png"), ),
          UserAccountsDrawerHeader(
          
                  accountName: const Text("Emna Charfi"),
                  accountEmail: const Text("Emna@email.com"),
                  // 1. Photo de profil ronde
                  currentAccountPicture: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/esprit.png'),
           // Ou NetworkImage('url')
                  ),
                  ),
          Divider(),
          ListTile(
            onTap: () {
              //Navigator.pushNamed(context, "/gStore");
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavBarHome(),));
            },
            title: Text("G_Store Page"),
            leading: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}