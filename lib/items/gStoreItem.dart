import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/entities/film.dart';
import 'package:projet_flutter_sae2/views/detailsFilm.dart';

class GStoreItem extends StatelessWidget {
  final Film film;
  const GStoreItem({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsFilm(film: film),));
      },
      child: Container(
        padding: EdgeInsets.all(7),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset("assets/images/${film.image}"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(film.name, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                    Icon(Icons.star, color: Colors.amber,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}