import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMPer: Log In',
      home: Scaffold(
        backgroundColor: const Color(0xFF741818),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/EMPerIcon.png',
                scale: 2,
              ),
              Text(
                'EMPer',
                style: GoogleFonts.pacifico(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Text(
                'Create an Account',
                style: GoogleFonts.pacifico(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
