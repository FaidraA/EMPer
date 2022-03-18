import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int profileCount = 1;
  bool favourited = false;
  void _incrementCounter() {
    setState(() {
      profileCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMPer: Welcome',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'EMPer: Welcome',
            style: GoogleFonts.getFont('Pacifico'),
          ),
          backgroundColor: const Color(0xFF741818),
        ),
        backgroundColor: const Color(0xFFFECABD),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome the EMPer Dating App. \n Log In to find your match now: ',
                style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(fontSize: 24)),
              ),
              Text(
                'Log In',
                textAlign: TextAlign.center,
                style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(fontSize: 24)),
              ),
              Text(
                'Sign Up',
                textAlign: TextAlign.center,
                style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(fontSize: 24)),
              ),
              Text('You dont have an account yet? Sign Up now!',
                  style: TextStyle(color: Color(0xFF741818))),
            ],
          ),
        ),
      ),
    );
  }
}
