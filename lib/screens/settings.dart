import 'package:emper/screens/menu.dart';
import 'package:emper/screens/log_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emper/screens/sign_up.dart';
import 'package:emper/globals.dart' as globals;

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  SettingsState createState() => SettingsState();
}

class SettingsState extends State<Settings> {
  bool enableNotif = false;
  double notifSound = 0;
  double callVol = 0;
  double micVol = 0;
  bool gpsMatch = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'EMPer Settings',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Settings!',
              style: GoogleFonts.getFont('Pacifico'),
            ),
            backgroundColor: const Color(0xFF741818),
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                )),
          ),
          backgroundColor: const Color(0xFFFECABD),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Enable Notifications'),
                    Container(width: 60),
                    Switch(
                      value: enableNotif,
                      activeColor: const Color(0xFF741818),
                      onChanged: (value) {
                        setState(() {
                          enableNotif = value;
                          enableNotif ? null : (notifSound = 0);
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Notification Sound'),
                    Container(width: 60),
                    Slider(
                      value: notifSound,
                      activeColor: const Color(0xFF741818),
                      max: 100,
                      divisions: 5,
                      label: notifSound.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          notifSound = value;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Call Volume'),
                    Container(width: 60),
                    Slider(
                      value: callVol,
                      activeColor: const Color(0xFF741818),
                      max: 100,
                      divisions: 5,
                      label: callVol.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          callVol = value;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Mic Volume'),
                    Container(width: 60),
                    Slider(
                      value: micVol,
                      activeColor: const Color(0xFF741818),
                      max: 100,
                      divisions: 5,
                      label: micVol.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          micVol = value;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Allow GPS Matchmaking'),
                    Container(width: 60),
                    Switch(
                      value: gpsMatch,
                      activeColor: const Color(0xFF741818),
                      onChanged: (value) {
                        setState(() {
                          gpsMatch = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
