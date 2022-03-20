import 'package:emper/screens/menu.dart';
import 'package:emper/screens/log_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emper/screens/sign_up.dart';
import 'globals.dart' as globals;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EMPer',
      theme: ThemeData(
          primarySwatch: Colors.red,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF741818),
            iconTheme: IconThemeData(color: Colors.white),
            actionsIconTheme: IconThemeData(color: Colors.white),
            centerTitle: false,
            titleTextStyle: TextStyle(
                color: Colors.white, fontFamily: 'Pacifico', fontSize: 16.0),
          )),
      home: const LogIn(),
    );
  }
}

class MatchPage extends StatefulWidget {
  const MatchPage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  //int profileCount=1;
  bool favourited = false;
  void _incrementCounter() {
    setState(() {
      globals.profileCount++;
    });
  }

  void _incrementCounterandMatch(int i) {
    setState(() {
      globals.profileCount++;
      globals.matchedProfile[i] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Make a Match',
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'EMPer',
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
          backgroundColor: const Color(0xFFFECABD),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                if (globals.profileCount == 1) ...[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/Face1.png'),
                        Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                                left: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                                right: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                                bottom: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFEFDBD6),
                            ),
                            width: 300,
                            height: 160,
                            child: Column(
                              children: const [
                                Text('\n Maria Anagnostou, 19 \n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800)),
                                Text(
                                  ' ECE \n Straight \n Casual \n',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Text('I like dogs and long walks on the beach'),
                              ],
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              heroTag: 'off',
                              onPressed: _incrementCounter,
                              tooltip: 'No Match',
                              child: Image.asset('assets/off_torch.png'),
                            ),
                            Container(
                              width: 140,
                            ),
                            FloatingActionButton(
                              heroTag: 'off',
                              onPressed: () {
                                _incrementCounterandMatch(0);
                              },
                              tooltip: 'Match!',
                              child: Image.asset('assets/on_torch.png'),
                            ),
                          ],
                        ),
                      ])
                ] else if (globals.profileCount == 2) ...[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/Face2.png'),
                        Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                                left: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                                right: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                                bottom: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFEFDBD6),
                            ),
                            width: 300,
                            height: 160,
                            child: Column(
                              children: const [
                                Text('\n Giannis Papadakis, 21 \n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800)),
                                Text(
                                  ' MechEng \n Bisexual \n Casual \n',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Text('Hit me up for a good time!'),
                              ],
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              heroTag: 'off',
                              onPressed: _incrementCounter,
                              tooltip: 'No Match',
                              child: Image.asset('assets/off_torch.png'),
                            ),
                            Container(
                              width: 140,
                            ),
                            FloatingActionButton(
                              heroTag: 'on',
                              onPressed: () {
                                _incrementCounterandMatch(1);
                              },
                              tooltip: 'Match!',
                              child: Image.asset('assets/on_torch.png'),
                            ),
                          ],
                        ),
                      ])
                ] else if (globals.profileCount == 3) ...[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/Face3.png'),
                        Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                                left: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                                right: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                                bottom: BorderSide(
                                    width: 4.0, color: Color(0xFF741818)),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFEFDBD6),
                            ),
                            width: 300,
                            height: 160,
                            child: Column(
                              children: const [
                                Text('\n Aggeliki Panagiotaki, 22 \n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800)),
                                Text(
                                  ' ChemEng \n Lesbian \n Serious \n',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Text('I am a romantic at heart'),
                              ],
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              heroTag: 'off',
                              onPressed: _incrementCounter,
                              tooltip: 'No Match',
                              child: Image.asset('assets/off_torch.png'),
                            ),
                            Container(
                              width: 140,
                            ),
                            FloatingActionButton(
                              heroTag: 'on',
                              onPressed: () {
                                _incrementCounterandMatch(2);
                              },
                              tooltip: 'Match!',
                              child: Image.asset(
                                'assets/on_torch.png',
                              ),
                            ),
                          ],
                        ),
                      ])
                ] else if (globals.profileCount >= 4) ...[
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'We are sorry, there are no more profiles yet... \n',
                          style: GoogleFonts.pacifico(
                              textStyle: const TextStyle(fontSize: 24)),
                        ),
                        Text(
                            'Tip: You can check out your matches from the My Matches tab on the menu',
                            style: TextStyle(color: Color(0xFF741818))),
                      ],
                    ),
                  )
                ]
              ],
            ),
          )),
    );
  }
}

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  NotificationsPageState createState() => NotificationsPageState();
}

class NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Notifications',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My Notifications',
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
          ),
          body: ListView(
            children: [
              ListTile(
                  title: Text('Dionysis Aggelopoulos has matched with you!'),
                  trailing: Icon(
                    globals.alreadySeen[0]
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: globals.alreadySeen[0] ? null : Color(0xFF741818),
                    semanticLabel: globals.alreadySeen[0]
                        ? 'You have read this!'
                        : 'Tap to mark as seen',
                  ),
                  onTap: () {
                    setState(() {
                      globals.alreadySeen[0]
                          ? null
                          : (globals.alreadySeen[0] = true);
                    });
                  }),
              ListTile(
                  title: Text('You have a text from Dionysis Aggelopoulos'),
                  trailing: Icon(
                    globals.alreadySeen[1]
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: globals.alreadySeen[1] ? null : Color(0xFF741818),
                    semanticLabel: globals.alreadySeen[1]
                        ? 'You have read this!'
                        : 'Tap to mark as seen',
                  ),
                  onTap: () {
                    setState(() {
                      globals.alreadySeen[1]
                          ? null
                          : (globals.alreadySeen[1] = true);
                    });
                  }),
              ListTile(
                  title: Text(
                      'There is an update coming, check out our website for all the latest news'),
                  trailing: Icon(
                    globals.alreadySeen[2]
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: globals.alreadySeen[2] ? null : Color(0xFF741818),
                    semanticLabel: globals.alreadySeen[2]
                        ? 'You have read this!'
                        : 'Tap to mark as seen',
                  ),
                  onTap: () {
                    setState(() {
                      globals.alreadySeen[2]
                          ? null
                          : (globals.alreadySeen[2] = true);
                    });
                  }),
            ],
          ),
        ));
  }
}

class MyMatchesPage extends StatefulWidget {
  const MyMatchesPage({Key? key}) : super(key: key);

  @override
  MyMatchesPageState createState() => MyMatchesPageState();
}

class MyMatchesPageState extends State<MyMatchesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'See your Matches',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'EMPer',
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
          body: ListView(
            children: [
              Container(
                child: globals.matchedProfile[0]
                    ? ListTile(
                        title: Text('Maria Anagnostou'),
                        leading: Icon(Icons.favorite),
                        onTap: () {
                          globals.viewingprofile = 1;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UserBProfile()),
                          );
                        },
                      )
                    : null,
              ),
              Container(
                child: globals.matchedProfile[1]
                    ? ListTile(
                        title: Text('Giannis Papadakis'),
                        leading: Icon(Icons.favorite),
                        onTap: () {
                          globals.viewingprofile = 2;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UserBProfile()),
                          );
                        },
                      )
                    : null,
              ),
              Container(
                child: globals.matchedProfile[2]
                    ? ListTile(
                        title: Text('Aggeliki Panagiotaki'),
                        leading: Icon(Icons.favorite),
                        onTap: () {
                          globals.viewingprofile = 3;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UserBProfile()),
                          );
                        },
                      )
                    : null,
              ),
            ],
          ),
        ));
  }
}

class UserBProfile extends StatelessWidget {
  const UserBProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Your Match',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'EMPer',
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
                if (globals.viewingprofile == 1) ...[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/Face1.png'),
                      const Text('\n Maria Anagnostou, 19 \n',
                          style: TextStyle(fontWeight: FontWeight.w800)),
                      const Text(
                        ' ECE \n Straight \n Casual \n',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const Text('I like dogs and long walks on the beach'),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF741818)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Chat()),
                            );
                          },
                          child: Text(
                            'START A CONVERSATION...',
                            style: GoogleFonts.pacifico(color: Colors.white),
                          ))
                    ],
                  )
                ] else if (globals.viewingprofile == 2) ...[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/Face2.png'),
                      const Text('\n Giannis Papadakis, 21 \n',
                          style: TextStyle(fontWeight: FontWeight.w800)),
                      const Text(
                        ' MechEng \n Bisexual \n Casual \n',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const Text('Hit me up for a good time!'),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF741818)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Chat()),
                            );
                          },
                          child: Text(
                            'START A CONVERSATION...',
                            style: GoogleFonts.pacifico(color: Colors.white),
                          ))
                    ],
                  )
                ] else if (globals.viewingprofile == 3) ...[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/Face3.png'),
                      const Text('\n Aggeliki Panagiotaki, 22 \n',
                          style: TextStyle(fontWeight: FontWeight.w800)),
                      const Text(
                        ' ChemEng \n Lesbian \n Serious \n',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const Text('I am a romantic at heart'),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF741818)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Chat()),
                            );
                          },
                          child: Text(
                            'START A CONVERSATION...',
                            style: GoogleFonts.pacifico(color: Colors.white),
                          ))
                    ],
                  )
                ]
              ],
            ),
          ),
        ));
  }
}

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  ChatState createState() => ChatState();
}

class ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Text Your Match',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Chat!',
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
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Call()),
                    );
                  },
                  icon: const Icon(Icons.call, color: Colors.white)),
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
                if (globals.viewingprofile == 1) ...[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/Face1.png'),
                          ),
                          Container(
                            width: 10,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFAF302C),
                              ),
                              width: 200,
                              height: 60,
                              child: Text('\n Hi! How are you?',
                                  style: TextStyle(color: Colors.white))),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFFC4C29),
                            ),
                            width: 200,
                            height: 60,
                            child: Text('\n Hi. I am fine, how about you?',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Container(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/dummyprofile.jpg'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/Face1.png'),
                          ),
                          Container(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFAF302C),
                            ),
                            width: 260,
                            height: 100,
                            child: Text(
                                '\n I am fine too, even though a bit tired. I was working on an assignment for my Human Computer Interaction class until late last night',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF741818))),
                              hintText: 'Enter your message here',
                              focusColor: Color(0xFF741818),
                              suffixIcon: Icon(Icons.add)),
                          cursorColor: Color(0xFF741818),
                        ),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF741818)),
                          onPressed: () {},
                          child: Text('SEND...',
                              style: GoogleFonts.pacifico(color: Colors.white)))
                    ],
                  )
                ] else if (globals.viewingprofile == 2) ...[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/Face2.png'),
                          ),
                          Container(
                            width: 10,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFAF302C),
                              ),
                              width: 200,
                              height: 60,
                              child: Text('\n Hello. Whats up?',
                                  style: TextStyle(color: Colors.white))),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFFC4C29),
                            ),
                            width: 200,
                            height: 60,
                            child: Text(
                                '\n Hiiii. I am just watching some Netflix, how about you?',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Container(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/dummyprofile.jpg'),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF741818))),
                              hintText: 'Enter your message here',
                              focusColor: Color(0xFF741818),
                              suffixIcon: Icon(Icons.add)),
                          cursorColor: Color(0xFF741818),
                        ),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF741818)),
                          onPressed: () {},
                          child: Text('SEND...',
                              style: GoogleFonts.pacifico(color: Colors.white)))
                    ],
                  )
                ] else if (globals.viewingprofile == 3) ...[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFFC4C29),
                            ),
                            width: 200,
                            height: 60,
                            child: Text(
                                '\n Hey! I think I saw you today on 242',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Container(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/dummyprofile.jpg'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/Face3.png'),
                          ),
                          Container(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFFA302C),
                            ),
                            width: 200,
                            height: 60,
                            child: Text(
                                '\n I saw you too. I could not take my eyes off you',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF741818))),
                              hintText: 'Enter your message here',
                              focusColor: Color(0xFF741818),
                              suffixIcon: Icon(Icons.add)),
                          cursorColor: Color(0xFF741818),
                        ),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF741818)),
                          onPressed: () {},
                          child: Text('SEND...',
                              style: GoogleFonts.pacifico(color: Colors.white)))
                    ],
                  )
                ],
              ],
            ),
          ),
        ));
  }
}

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  CallState createState() => CallState();
}

class CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Make a call',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calling...',
            style: GoogleFonts.getFont('Pacifico'),
          ),
          backgroundColor: const Color(0xFF741818),
        ),
        backgroundColor: Color(0xFFFECABD),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (globals.viewingprofile == 1) ...[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: Image.asset('assets/Face1.png')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic,
                              color: Color(0xFF741818),
                            )),
                        Container(
                          width: 100,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.cancel_sharp,
                              color: Color(0xFFAF302C),
                            ))
                      ],
                    )
                  ],
                )
              ] else if (globals.viewingprofile == 2) ...[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: Image.asset('assets/Face2.png')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic,
                              color: Color(0xFF741818),
                            )),
                        Container(
                          width: 100,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.cancel_sharp,
                              color: Color(0xFFAF302C),
                            ))
                      ],
                    )
                  ],
                )
              ] else if (globals.viewingprofile == 3) ...[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: Image.asset('assets/Face3.png')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic,
                              color: Color(0xFF741818),
                            )),
                        Container(
                          width: 100,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.cancel_sharp,
                              color: Color(0xFFAF302C),
                            ))
                      ],
                    )
                  ],
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}
