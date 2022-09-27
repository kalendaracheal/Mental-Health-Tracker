import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/Signup.dart';

import '../Screens/My screens/Login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final messengerKey = GlobalKey<ScaffoldMessengerState>();
  Future resetPassword() async{
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
          email: emailController.text.trim());


      Utils.showSnackBar('Password Reset Email Sent');

    }
    on FirebaseAuthException catch (e) {
      Utils.showSnackBar(e.message);
      print(e);
    }
  }

  @override
  void dispose(){
    emailController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),

      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Reset Password",
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 24)),
                const SizedBox(
                  height: 10,
                ),
                Text('Let us get your password updated',
                    style: GoogleFonts.balsamiqSans(fontSize: 16)),
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('/images/mht.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: 'Enter your email',
                          prefixIcon: const Icon(Icons.vpn_key),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          )),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      enableIMEPersonalizedLearning: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Please Enter Your Email");
                        }
                        // reg expression for email validation
                        if (!RegExp(
                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return ("Please enter a valid email");
                        }

                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                    icon: const Icon(Icons.email_outlined),
                    label: Text('Reset Password',
                      style: GoogleFonts.varelaRound(fontSize: 18),

                    ),
                    onPressed: () {

                    resetPassword();
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Reset password email sent\n\n Check your email')));

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Login()),
                    );
                    },


                ),
                const SizedBox(height: 20,),
                // ElevatedButton.icon(
                //   style: ElevatedButton.styleFrom(
                //     minimumSize: const Size.fromHeight(50),
                //   ),
                //   icon: const Icon(Icons.cancel_outlined),
                //   label: Text('Cancel',
                //     style: GoogleFonts.varelaRound(fontSize: 18),
                //   ),
                //   onPressed: () {
                //     FirebaseAuth.instance.signOut();
                //
                //   },
                //
                //
                // )

              ],
            ),
          ),
        ]),
      ),
    );
   
  }
}
