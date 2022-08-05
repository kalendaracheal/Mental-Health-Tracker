import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/Screens/Journal.dart';
import 'package:mentalhealthtracker/Screens/Question1.dart';
import 'package:mentalhealthtracker/Screens/Welcome.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mental Health Tracker',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'Mental Health Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _usernameController = TextEditingController();
final TextEditingController _passwordController = TextEditingController( );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0xFFBBDEFB),
        appBar: AppBar(

          title: Text(widget.title),

        ),

        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('/Images/bg.png'),
                  fit: BoxFit.cover
              )
          ),

          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Padding(padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text("Login",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)
                      ),
                      const SizedBox(height: 20),
                      const Text('Hello! Let us get you logged in',
                          style:  TextStyle( fontSize: 16)
                      ),
                      const SizedBox(height: 20),

                      const Padding(padding: EdgeInsets.all(20.0),
                      ),
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black
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
                        decoration: const InputDecoration(
                            hintText: 'Enter your password',
                            border: OutlineInputBorder()

                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text("Don't have an account, sign up here"),

                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Welcome()),
                            );
                          },
                          child: const Text("Login")
                      ),
                    ],
                  ),
                ),

              ]),
        )
    );
  }
}

