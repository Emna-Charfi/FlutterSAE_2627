import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/entities/film.dart';

class DetailsFilm extends StatelessWidget {
  final Film film;
  const DetailsFilm({super.key, required this.film });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(film.name),
        centerTitle: true,
        leading: BackButton(
          
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset("assets/images/${film.image}"),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Text(film.description, style: TextStyle(fontSize: 15),),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Text("${film.price} DT", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(
              width: 200,
              child: ElevatedButton.icon(onPressed: () {
                
              }, 
              label: Text("Acheter", style: TextStyle(color: Colors.white, fontSize: 18),),
              icon: Icon(Icons.shopping_bag, color: Colors.white,),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange
              ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}