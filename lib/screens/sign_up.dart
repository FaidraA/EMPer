import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emper: Sign Up',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'EMPer: Sign Up',
            style: GoogleFonts.getFont('Pacifico'),
          ),
          backgroundColor: const Color(0xFF741818),
        ),
        backgroundColor: const Color(0xFFF1C3C3),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Submit your Profile ...',
                      style: GoogleFonts.pacifico(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 40,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF741818),
                        ),
                        child: Text('SUBMIT',
                            style: GoogleFonts.pacifico(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            )),
                        onPressed: () {
                          print(nameController.text);
                          print(passwordController.text);
                          //Main Page screen
                        },
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
