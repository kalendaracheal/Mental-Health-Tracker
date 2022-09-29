// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/createPasscode.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/memories.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/myJournal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  State<Journal> createState() => _JournalState();
}

class _JournalState extends State<Journal> {
  final passcode_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),

      // appBar: AppBar(
      //   leading: const BackButton(
      //     color: Colors.black,
      //   ),
      //   title: Text('                 Daily Journal',
      //       style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black87)),
      //   elevation: 0,
      //   backgroundColor:  Colors.transparent,
      // ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text("Mental Health Tracker",
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold,
                        fontSize: 26
                  )),
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('/images/mht.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text('Enter Passcode to proceed',
                    style: GoogleFonts.balsamiqSans(fontSize: 16)),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: passcode_controller,
                  decoration: const InputDecoration(
                    hintText: 'Enter your passcode',
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Empty Fields Found ')));
                    }
                    return null;
                  },
                ),
            
                SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(
                  width: size.width * 0.8,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Don\'t you have a passcode?'),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreatePasscode()),
                            );
                          },
                          child: Text(
                            'Create Passcode',
                            style: GoogleFonts.balsamiqSans(
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                ),
                    const SizedBox(
                  height: 40,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Memories()),
                      );
                    },
                    child: Text(" My Space ",
                        style: GoogleFonts.balsamiqSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                            color: Colors.white)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: () async {
                      final prefs = await SharedPreferences.getInstance();
                      String? storedCode = prefs.getString('storedPasscode');
                      // print(storedCode?.trimRight());
                      if (passcode_controller.text.toString() !=
                          storedCode.toString()) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Passcode doesnt match')));
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyJournal()),
                        );
                      }
                    },
                    color: Colors.lightBlueAccent.shade400,
                    child: Text(
                      'Continue',
                      style: GoogleFonts.balsamiqSans(
                          fontSize: 17, color: Colors.white),
                    ),
                  ),
                ]),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
