// ignore_for_file: unnecessary_const

import 'package:emper/screens/log_in.dart';
import 'package:emper/screens/profile.dart';
import 'package:emper/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:emper/main.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMPer: Menu',
      home: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Center(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 30,
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: const Color(0xFFAF302C),
                  ),
                  child: Text('EMPer Menu Box 1'),
                ),
              ),
              const SizedBox(
                height: 100,
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage('assets/dummyprofile.jpg', scale: 0.5),
                    ),
                  ),
                ),
              ),
              const ListTile(
                title: const Text(
                  'EMPer Menu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: const Text('Make a Match'),
                leading: Icon(Icons.favorite),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MatchPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('My Matches'),
                leading: Icon(Icons.favorite),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyMatchesPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('My Profile'),
                leading: Icon(Icons.favorite),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyProfile()),
                  );
                },
              ),
              ListTile(
                title: const Text('Notifications'),
                leading: Icon(Icons.favorite),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationsPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Settings'),
                leading: Icon(Icons.favorite),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Settings()),
                  );
                },
              ),
              ListTile(
                title: const Text('Log out'),
                leading: Icon(Icons.favorite),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LogIn()),
                  );
                },
              ),
              ListTile(
                title: const Icon(Icons.close, color: Colors.grey, size: 40),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
