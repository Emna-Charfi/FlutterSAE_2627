import 'package:flutter/material.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({super.key});

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
   final _globalKey = GlobalKey<FormState>();
     String userN="";
     String email="";
     String psw="";
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text("Singup Page"),
        centerTitle: true,
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _globalKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Image.asset("assets/images/esprit.png"),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Own7wS4KQymj-0U86vpNdmwG5IQGURhGoTXQDFbucg&s=10",height:250),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Sing Up", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    labelText: "Username",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        width: 1.5,
                      ),
                  ),
                
                ),
                onSaved: (newValue) => userN = newValue!,
                validator: (value) {
                  if(value!.isEmpty) return "Le champ Username est vide";
                },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        width: 1.5,
                      ),
                  ),
                ),
                onSaved: (newValue) => email= newValue!,
                validator: (value) {
                  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                  if(value!.isEmpty) {
                    return  "Le champ Email est vide";
                  } else if(!emailRegex.hasMatch(value)) {
                    return "Le champ Email est non valide";
                }
                  }
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                TextFormField(
                   obscureText: true, 
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        width: 1.5,
                      ),
                  ),
                ),
                onSaved: (newValue) => psw = newValue!,
                validator: (value) {
                  if(value!.isEmpty) return "Le champ password est vide";
                },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Already have an account? ", style: TextStyle(fontSize: 15, color: Colors.black),),
                    IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.arrow_right, color: Colors.deepOrange,size: 30,))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.9,
                  child: ElevatedButton(onPressed: () {
                    if(_globalKey.currentState!.validate()){
                      _globalKey.currentState!.save();
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("User information"),
                            content: Text("Email is $email and Username is $userN"),
                          );
                        },
                      );
                      Navigator.pushNamed(context,"/gStore" );
                    }
                    
                  }, child: Text("Singup"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    
                  )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}