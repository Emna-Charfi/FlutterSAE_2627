import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/entities/film.dart';
import 'package:projet_flutter_sae2/views/detailsFilm.dart';

class Biblioitem extends StatelessWidget {
  final Film film;
  const Biblioitem({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DetailsFilm(film: film);
      },)),
      child: Card(
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Coins plus arrondis
         // side: BorderSide( width: 1), // Bordure colorée
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              alignment: Alignment.center,
              child: Image.asset("assets/images/${film.image}", )),
            SizedBox(height:MediaQuery.of(context).size.height*0.01,),
            Text(film.name, style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}