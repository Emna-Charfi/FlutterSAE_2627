import 'package:flutter_application_5sae2/entites/game.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class BD{

  static Database? _db;

  static Future<Database> get database async{
    if(_db != null) return _db!;
    _db = await openDatabase(
      join(await getDatabasesPath(), 'cart.db'),
      version: 1,
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE cart(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            image TEXT,
            price REAL
          )
        ''');
      },
    );
    print("Chemin de la BD: $_db");
    return _db!;
  }

  static Future<void> addItem(Game game)async{
    final db = await database;
    await db.insert("cart", {
      'title': game.name,
      'image': game.image,
      'price': game.prix.toDouble()
    });
  }

  static Future<List<Map<String,dynamic>>> getItems()async{
    final db = await database;
    return await db.query('cart');
  }

  static Future<void> removeItem(int id) async{
    final db = await database;
    await db.delete('cart', where: "id = ?", whereArgs: [id]);
  }
}