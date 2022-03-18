import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key, required this.title}) : super(key: key);
  final String title;
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
          //decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              Image.asset('assets/EMPerIcon.png'),
              Text('EMPer'),
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
