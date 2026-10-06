import 'dart:math';

import 'package:flutter/material.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
   final _keyForm = GlobalKey<FormState>();
    late String username, email, psw;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _keyForm,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                //Center(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMRJr8sLkMnROnXK6pdzePRWglwN-If37TUQ&s')),
                Center(child: Image.asset("assets/images/esprit.png")),
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
                  validator: (value) {
                    if(value!.isEmpty) return "Le champs username est vide!";
                  },
                  onSaved: (newValue) {
                    username = newValue!;
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
                    if(value!.isEmpty) return "Email est vide!";
                     if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                  },
                  onSaved: (newValue) => email = newValue!,
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
                    if(value!.isEmpty) return "Password vide!";
                  },
                  onSaved: (newValue) => psw = newValue!,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Already have an account? "),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/singin"); 
                      },
                      icon: Icon(Icons.arrow_right_alt, size: 30,
                      color: Colors.deepOrangeAccent,)
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {
                    if(_keyForm.currentState!.validate()){
                      _keyForm.currentState!.save();
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: Text("Information"),
                          content: Text("Username is: $username, Email is: $email, password is: $psw"),
                        );
                      },);
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