import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Journal.dart';
import 'MyJournal.dart';

class CreatePasscode extends StatefulWidget {
  const CreatePasscode({Key? key}) : super(key: key);

  @override
  State<CreatePasscode> createState() => _CreatePasscodeState();
}

class _CreatePasscodeState extends State<CreatePasscode> {
  final passcode_controller = TextEditingController();
  final comfirmpasscode_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      // appBar: AppBar(
      //   title: const Text('Journal'),
      // ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 100, right: 100, top: 20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Register Passcode',
                  style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 20)),

              const SizedBox(height: 10,),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('/images/mht.png'),
              ),
              const SizedBox(height: 20,),
              Text('Create Passcode',
                  style: GoogleFonts.balsamiqSans(fontSize: 16) ),

              const SizedBox(height: 40,),
              TextFormField(
                controller: passcode_controller,
                decoration: const InputDecoration(
                  hintText: 'Enter your passcode',
                  border: OutlineInputBorder(),

                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12.0,),
              TextFormField(
                controller: comfirmpasscode_controller,
                decoration: const InputDecoration(
                  hintText: 'Confirm passcode',
                  border: OutlineInputBorder(),

                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 40,),
              MaterialButton( onPressed: () async {
                if( passcode_controller.text !=  comfirmpasscode_controller.text ){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:  Text('Passcodes are different')));
                } else {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setString('storedPasscode', passcode_controller.text );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyJournal()),
                  );
                }

              },
                child: Text('Register Passcode',
                  style: GoogleFonts.balsamiqSans(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
                ),
               color: Colors.lightBlueAccent.shade400,

              ),
              SizedBox(
                height: size.height*0.02,
              ),
              SizedBox(
                width: size.width*0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Already have a passcode?'),

                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const  Journal()),
                        );
                      },
                      child: Text('Journal',
                        style: GoogleFonts.balsamiqSans(color: Colors.lightBlue, fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              )
              ],
          ),
        ),
      ),

    );
  }
}
