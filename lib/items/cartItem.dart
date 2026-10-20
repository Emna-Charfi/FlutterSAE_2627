import 'package:flutter/material.dart';
import 'package:projet_flutter_sae2/entities/film.dart';

class CartItem extends StatelessWidget {
  final Film film;
  const CartItem({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/${film.image}", width: 200,height: 100,),
          Text(film.name, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
          IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.deepOrange,))
        ],
      ),
    );
  }
}