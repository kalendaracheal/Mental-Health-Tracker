import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/Signup.dart';

import '../Screens/My screens/Login.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return isLogin ? const Login() : const Signup();
  }
}
