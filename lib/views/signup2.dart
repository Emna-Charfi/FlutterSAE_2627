import 'package:flutter/material.dart';
import 'package:flutter_application_5sae2/views/game_grid.dart';
import 'package:flutter_application_5sae2/views/home_page.dart';

class Singup2 extends StatefulWidget {
  const Singup2({super.key});

  @override
  State<Singup2> createState() => _Singup2State();
}

class _Singup2State extends State<Singup2> {
  final _keyForm = GlobalKey<FormState>();
    late String username, email, psw;
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Image.asset("assets/images/esprit.png")),
            ListTile(
              title: Text("Home Page"),
              onTap: () {
                 Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
              },
              leading: Icon(Icons.home),
            ),
            GestureDetector(
              child: ListTile(
                title: Text("Game List"),
                onTap: () {
                   Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GameGrid()),
    );
                },
                leading: Icon(Icons.games_rounded),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _keyForm,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Center(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMRJr8sLkMnROnXK6pdzePRWglwN-If37TUQ&s')),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.fromLTRB(20, 8, 8, 5),
                  child: Text("Singup".toUpperCase(),style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 22,
                    ), ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter your username',
                    //prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (newValue) {
                    username = newValue!;
                  },
                  validator: (value) {
                    if(value!.isEmpty) return "Le champs de text est vide";
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your Email',
                    //prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.isEmpty) return "Le champs de text ne doit pas etre vide";
                    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                    if (!emailRegex.hasMatch(value)) {
                      return 'Please enter a valid email format.';
                    }
                  },
                  onSaved: (newValue) {
                    email= newValue!;
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    //prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    
                  ),
                  validator: (value) {
                    if(value!.isEmpty) return "Le champs password est vide!";
                  },
                  onSaved: (newValue) {
                    psw = newValue!;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Already have an account? "),
                    IconButton(
                      onPressed: () {
                        
                      },
                      icon: Icon(Icons.arrow_right_alt, size: 30,
                      color: Colors.deepOrangeAccent,)
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if(_keyForm.currentState!.validate()){
                        _keyForm.currentState!.save();
                        showDialog(context: context, 
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Information"),
                            content: Text("Username is: $username, email is: $email, password is : $psw"),
                          );
                        },
                        );
                      }
                    },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange
                  ),
                   child: Text("Sing Up".toUpperCase(), style: TextStyle(color: Colors.white),)
                   ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}