import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Welcome.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final TextEditingController _usernameontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.cyan[100],
      // appBar: AppBar(
      //   title: const Text('Journal'),
      // ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Padding(padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Sign up",
                        style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.blue)
                    ),
                    const SizedBox(height: 10,),
                    Text('Hello! Let us get your account set up',
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
                      controller: _usernameontroller,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black
                            ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),


                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                     controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black
                            ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),


                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 12),
                    TextFormField(
                      controller: _emailController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,

                            ),
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
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: _phonenumberController,
                      decoration: InputDecoration(
                        hintText: 'Phone number',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black,

                            ),
                          borderRadius: BorderRadius.circular(12.0),
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
                    ElevatedButton(
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const Welcome()),
                          );
                        },
                        child: const Text("Sign Up")
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

                    const Text('Privacy policy & terms of service'),
                    const SizedBox(height: 20),




                  ],
                ),
              ),

            ]),
      )

    );
  }
}
