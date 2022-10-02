import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/welcome.dart';

class AuthGate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            showAuthActionSwitch: true,
            headerBuilder: (context, constraints, _) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset("assets/images/mht.png"),
                ),
              );
            },
            subtitleBuilder: (context, action) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  action == AuthAction.signIn
                      ? 'Welcome to Mental Health Tracker! \n\n Please sign in to continue.'
                      : 'Welcome to Mental Health Tracker! \n\n Please create an account to continue',
                      style: GoogleFonts.balsamiqSans( fontSize: 16,),
                ),
              );
            },
            //footer
            footerBuilder: (context, _) {
              return Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'By signing in, you agree to our terms and conditions of our services.',
                  style: GoogleFonts.balsamiqSans( fontSize: 14,color: Colors.grey),),
              );
            },
            providerConfigs: const [
              EmailProviderConfiguration(),
              // GoogleProviderConfiguration(
              //   clientId: '...',
              // ),
            ],
          );
        }
        return const Welcome();
      },
    );
  }
}