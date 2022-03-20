import 'package:emper/main.dart';
import 'package:emper/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emper/globals.dart' as globals;
import 'package:emper/screens/menu.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Your Profile',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My Profile',
              style: GoogleFonts.getFont('Pacifico'),
            ),
            backgroundColor: const Color(0xFF741818),
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Menu()),
                );
              },
              child: const Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationsPage()),
                    );
                  },
                  icon: const Icon(Icons.notifications, color: Colors.white)),
            ],
          ),
          backgroundColor: const Color(0xFFEFDBD6),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/dummyprofile.jpg'),
                    Text(globals.name,
                        style: TextStyle(fontWeight: FontWeight.w800)),
                    Text(
                      globals.ntuaSchool,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      globals.datingPref,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      globals.relationship,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(globals.description),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFF741818)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()),
                          );
                        },
                        child: Text(
                          'EDIT',
                          style: GoogleFonts.pacifico(color: Colors.white),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
