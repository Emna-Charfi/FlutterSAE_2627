import 'dart:convert';
import 'dart:ffi';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
class Userservice {

  Future<String> singup(email, password, username) async{

    String msg ="Failed";
    
    Map<String,String> headers={
         "Content-Type": "application/json; charset=UTF-8"
    };
    Map<String,dynamic> userData ={
        "email": email,
        "password": password,
        "username":username
    };
        final response = await http.post( Uri.parse("http://172.26.0.34:8889/signup"),
            headers: headers,
            body: json.encode(userData)
        );

      if(response.statusCode==201){
         msg ="Create";
          }
     

     return msg;                
  }

  static Future<bool> singin(email, password)async{
    bool msg = false;

    Map<String,String> headers={
      "Content-Type": "application/json; charset=UTF-8"
    };
    Map<String,dynamic> userData ={
      "email": email,
      "password": password,
    };                
    final response = await http.post(
      Uri.parse("http://172.26.0.34:8889/signin"),
       headers: headers,
       body: json.encode(userData)
    );

    if(response.statusCode==200){
       String res = response.body;
       Map<String,dynamic> data = json.decode(res);
      String _email= data["email"]; //C'est pour le test
      SharedPreferences sharedpref= await SharedPreferences.getInstance();
      sharedpref.setString("EMAIL", _email);
      msg =true;
    }
    return msg;
  }

}