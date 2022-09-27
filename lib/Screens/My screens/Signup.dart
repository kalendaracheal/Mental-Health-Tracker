import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../users.dart';
import 'Login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final navigatorKey = GlobalKey<NavigatorState>();
  final TextEditingController _usernameontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();


  Future sendUserDetailsToFirestore() async {
    try {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      User? user = FirebaseAuth.instance.currentUser;

      UserModel userModel = UserModel();

      // writing all the values

      userModel.username = _usernameontroller.text;
      userModel.email = _emailController.text;
      userModel.phonenumber = _phonenumberController.text;
      userModel.password = _passwordController.text;

      await firebaseFirestore
          .collection("myusers")
          .doc(user!.email)
          .set(userModel.toMap());
    } catch (e) {
      print(e);
    }
  }

  Future signUp() async {
    try {
      final isValid = _formKey.currentState!.validate();
      if (!isValid) return;
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) =>
              const Center(child: CircularProgressIndicator()));
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _emailController.text.trim(),
              password: _passwordController.text.trim())
          .then((value) => {sendUserDetailsToFirestore()});

    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(e.message);

      }
      navigatorKey.currentState!.popUntil((route) => route.isFirst);
    }


  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    _phonenumberController.dispose();
    _usernameontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.cyan[100],
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back, color: Colors.black87),
        //     onPressed: () {
        //       // passing this to our root
        //       Navigator.of(context).pop();
        //     },
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 60.0, right: 60.0, top: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Sign up",
                          style: GoogleFonts.varelaRound(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.blue)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Hello! Let us get your account set up',
                          style: GoogleFonts.balsamiqSans(fontSize: 16)),
                      const SizedBox(
                        height: 20,
                      ),
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('/images/mht.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                      ),
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _usernameontroller,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                enableIMEPersonalizedLearning: true,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.person),
                                  hintText: 'Username',
                                  border: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                validator: (value) {
                                  RegExp regex = RegExp(r'^.{3,}$');
                                  if (value!.isEmpty) {
                                    return ("Username cannot be Empty");
                                  }
                                  if (!regex.hasMatch(value)) {
                                    return ("Enter Valid name(Min. 3 Character)");
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 12),
                              TextFormField(
                                controller: _passwordController,
                                obscureText: true,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                enableIMEPersonalizedLearning: true,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  prefixIcon: const Icon(Icons.vpn_key),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                validator: (value) {
                                  RegExp regex = RegExp(r'^.{6,}$');
                                  if (value!.isEmpty) {
                                    return ("Password is required for login");
                                  }
                                  if (!regex.hasMatch(value)) {
                                    return ("Enter Valid Password(Min. 6 Character)");
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 12),
                              TextFormField(
                                controller: _emailController,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                enableIMEPersonalizedLearning: true,
                                decoration: InputDecoration(
                                    hintText: 'Email',
                                    prefixIcon: const Icon(Icons.email),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return ("Please Enter Your Email");
                                  }
                                  // reg expression for email validation
                                  if (!RegExp(
                                          "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                      .hasMatch(value)) {
                                    return ("Please Enter a valid email");
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 12),
                              TextFormField(
                                controller: _phonenumberController,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                enableIMEPersonalizedLearning: true,
                                decoration: InputDecoration(
                                  hintText: 'Phone number',
                                  prefixIcon: const Icon(Icons.phone),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  if (value.length != 10) {
                                    return 'Phone number should have 10 characters';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              signUp();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()),
                              );
                            }
                          },
                          child: const Text("Sign Up")),
                      const SizedBox(height: 20),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: size.width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account, ",
                                style: GoogleFonts.balsamiqSans(
                                    fontSize: 16, color: Colors.black87)),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()),
                                );
                              },
                              child: Text(
                                'Login here',
                                style: GoogleFonts.balsamiqSans(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold),
                              ),
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
        ));
  }
}

final messengerKey = GlobalKey<ScaffoldMessengerState>();

class Utils {
  static showSnackBar(String? text) {
    if (text == null) return;
    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: Colors.redAccent,
    );
    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
