import 'package:flutter/material.dart';
import 'package:flutter_application_5sae2/BD/db.dart';


class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<Map<String, dynamic>> films = [];
  void _loadCart() async{
    setState(() async{
      films = await BD.getItems();
    });
  }
  @override
  void initState() {
    _loadCart();
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mon Panier")),
      body: ListView.builder(
        itemCount: films.length,
        itemBuilder: (context, index) {
          final film = films[index];
          return ListTile(
            leading: Image.asset("assets/images/"+film['image'], width: 50, height: 50, fit: BoxFit.cover),
            title: Text(film['title']),
            subtitle: Text("${film['price']} DT"),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () async {
                  await BD.removeItem(film['id']);
                  setState(() {
                    _loadCart();
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("${films[index]} est supprimer de panier!"))
                );
              },
            ),
          );
        },
      ),
    );
  }
}