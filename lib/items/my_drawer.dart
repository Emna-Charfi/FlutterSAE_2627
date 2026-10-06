import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
   String emailShared = "";
    void getFromShared()async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        emailShared = prefs.getString("EMAIL")!;
      });
      
    }
    @override
  void initState() {
    getFromShared();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Image.asset("assets/images/esprit.png")),
          Center(child: Text(emailShared.toUpperCase(), style: TextStyle(fontSize: 25),)),
          Divider(),
          ListTile(
            title: Text("Home Page"),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
          ListTile(
            title: Text("Game List"),
            leading: Icon(Icons.games),
            onTap: () {
              Navigator.pushNamed(context, "/game");
            },
          ),
          ListTile(
            title: Text("SingIn"),
            leading: Icon(Icons.verified_user),
            onTap: () {
              Navigator.pushNamed(context, "/singin");
            },
          )
        ],
      ),
    );
  }
}