import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/Signup.dart';

import '../../page/qn.dart';
import 'Home.dart';
import 'Welcome.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Future signIn() async {
  //   await FirebaseFirestore.instance.signInWithUsernameAndPassword(
  //     username: _usernameController.text.trim(),
  //     password: _passwordController.text.trim()
  //   );
  //   //username: _user
  // }
  @override
  void dispose(){
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Padding(padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Login",
                      style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 24)
                  ),
                  const SizedBox(height: 10,),
                   Text('Hello! Let us get you logged in',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)
                  ),
                  const SizedBox(height: 20,),

                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('/images/mht.png'),
                  ),


                  const Padding(padding: EdgeInsets.all(20.0),
                  ),
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                              color: Colors.black,

                          )
                      ),


                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        )

                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Home()),
                        );
                      },
                      child: const Text("L o g i n")
                  ),
                  const SizedBox(height: 20),

                  SizedBox(

                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const  Signup()),
                          );
                        },
                        child: Text('Forgot password',
                          style: GoogleFonts.balsamiqSans(color: Colors.lightBlue, fontWeight: FontWeight.bold),),
                      )
                  ),
                  const SizedBox(height: 10.0,),

                  SizedBox(
                    width: size.width*0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text("Don't have an account, ",
                            style: GoogleFonts.balsamiqSans(fontSize: 16, color: Colors.black45)),

                        InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const  Signup()),
                            );
                          },
                          child: Text('Signup here',
                            style: GoogleFonts.balsamiqSans(color: Colors.lightBlue, fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                  ),

                     const SizedBox(height: 20),




                ],
              ),
            ),

          ]),
    );
  }
}
