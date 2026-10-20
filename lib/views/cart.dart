import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/bd/db.dart';
import 'package:projet_flutter_sae2/entities/film.dart';
import 'package:projet_flutter_sae2/items/cartItem.dart';

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
      print(films);
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
      appBar: AppBar(title: Text("Panier"),),
      body: FutureBuilder(future:  BD.getItems(), builder: (context, snapshot) {
        return ListView.builder(itemCount: snapshot.data!.length,
        itemBuilder: (context, index) {
          final  film = snapshot.data![index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Image.asset("assets/images/${film['image']}", width: 100, height: 50,),
                title: Text(film['title']),
                subtitle: Text(film['price'].toString()),
                trailing: IconButton(onPressed:() {
                  BD.removeItem(film['id']);
                  setState(() {
                    
                  });
                }, icon: Icon(Icons.delete)),
              ),
            ),
          );
        },
        );
      },),
    );
  }
}