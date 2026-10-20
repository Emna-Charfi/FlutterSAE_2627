import 'package:flutter_application_sae22/entites/game.dart';
import 'dart:convert';
import 'package:path/path.dart';

import 'package:http/http.dart' as http;

class GameService{


  Future<String> addGame(Game game)async{
    String msg ="Failed";

    //URL
      Uri url = Uri.parse("https://my-json-server.typicode.com/horizon-code-academy/fake-movies-api/movies?fbclid=IwAR304MRa9mMV49o69-RDABYquiKmbwQccUmVXR8kM__MJ_gohW-xYmBZOT8");
    //Header
      var header = {
          "Content-Type": "application/json"
      };
    //Body
      var body = json.encode(game.toJson());

      //Requet 
      await http.post(url, headers: header, body: body).then((response) {
          if(response.statusCode == 200){
           msg= "Create";
          }
      });

    return msg;
  }
  
  Future<List<Game>> getAll() async{

    List<Game> games = [];

    //URL
      Uri url = Uri.parse("https://backend-movies-esws.onrender.com/movies");
    //Header
      var header = {
          "Content-Type": "application/json"
      };

    //Requet
      await http.get(url, headers: header).then((response) {
          if(response.statusCode == 200){
          
               List<dynamic> jsonGames = json.decode(response.body);
              //  for (var element in jsonGames) {
              //     games.add(Game.fromJson(element));
              //  }
               for(int i = 0 ; i< jsonGames.length; i++){
                games.add(Game.fromJson(jsonGames[i]));
               }
          }
      });
      print(games);
    return  games;
  }


}