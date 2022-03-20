import 'package:emper/main.dart';
import 'package:emper/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emper/globals.dart' as globals;

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/EMPerIcon.png',
                scale: 2,
              ),
              const SizedBox(height: 10),
              Text(
                'EMPer',
                style: GoogleFonts.pacifico(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 350,
                height: 250,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Please enter your Log In credentials',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) => globals.signinMail = value,
                        controller: nameController,
                        decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF741818))),
                            border: OutlineInputBorder(),
                            hintText: 'ex abc@gmail.com'),
                        cursorColor: Color(0xFF741818),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) => globals.signinPass = value,
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF741818))),
                            border: OutlineInputBorder(),
                            hintText: 'ex Password'),
                        cursorColor: Color(0xFF741818),
                      ),
                    ),
                    Container(
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF741818),
                          ),
                          child: const Text('LOG IN'),
                          onPressed: () {
                            if (globals.signinMail == globals.userMail &&
                                globals.signinPass == globals.password)
                              [
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MatchPage()),
                                )
                              ];
                          },
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                child: Text(
                  'Create Account',
                  style: GoogleFonts.pacifico(
                    fontSize: 16,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
