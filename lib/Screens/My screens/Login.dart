import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/Home.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/Signup.dart';
import 'package:mentalhealthtracker/widget/forgotPassword.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final navigatorKey = GlobalKey<NavigatorState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Signin method
  Future signIn() async {
    final isValid = _formKey.currentState!.validate();
    if(!isValid) return;
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(e.message);
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Login",
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 24)),
                const SizedBox(
                  height: 10,
                ),
                Text('Hello! Let us get you logged in',
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
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          enableIMEPersonalizedLearning: true,
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            prefixIcon: const Icon(Icons.mail),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                )),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Please Enter Your Email");
                            }
                            // reg expression for email validation
                            if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(value)) {
                              return ("Please Enter a valid email");
                            }

                            return null;
                          },
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Enter your password',
                              prefixIcon: const Icon(Icons.vpn_key),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              )),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          enableIMEPersonalizedLearning: true,
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
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                     if (_formKey.currentState!.validate()) {
                        signIn();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      }
                    },
                    child: const Text("L o g i n")),
                const SizedBox(height: 20),
                SizedBox(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ForgotPassword( )),
                    );
                  },
                  child: Text(
                    'Forgot password',
                    style: GoogleFonts.balsamiqSans(
                        color: Colors.lightBlue, fontWeight: FontWeight.bold),
                  ),
                )),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account, ",
                          style: GoogleFonts.balsamiqSans(
                              fontSize: 16, color: Colors.black45)),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()),
                          );
                        },
                        child: Text(
                          'Signup here',
                          style: GoogleFonts.balsamiqSans(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class main_page extends StatelessWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const Login();
            }
            if (snapshot.hasError) {
              return const Center(child: Text('Something went wrong'));
            } else {
              return const Signup();
            }
          }),
    );
  }
}
