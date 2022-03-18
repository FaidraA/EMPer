import 'package:emper/screens/menu.dart';
import 'package:emper/screens/welcome.dart';
import 'package:emper/screens/log_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emper/screens/sign_up.dart';
//import 'package:emper/home.dart';
//import 'package:emper/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  const MatchPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
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
                  MaterialPageRoute(builder: (context) => const MainMenu()),
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
                if (profileCount == 1) ...[
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
                              children: [
                                const Text('\n Maria Anagnostou, 19 \n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800)),
                                const Text(
                                  ' ECE \n Straight \n Casual \n',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                const Text(
                                    'I like dogs and long walks on the beach'),
                              ],
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: _incrementCounter,
                              tooltip: 'No Match',
                              child: Image.asset('assets/off_torch.png'),
                            ),
                            Container(
                              width: 140,
                            ),
                            FloatingActionButton(
                              onPressed: _incrementCounter,
                              tooltip: 'Match!',
                              child: Image.asset('assets/on_torch.png'),
                            ),
                          ],
                        ),
                      ])
                ] else if (profileCount == 2) ...[
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
                              children: [
                                const Text('\n Giannis Papadakis, 21 \n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800)),
                                const Text(
                                  ' MechEng \n Bisexual \n Casual \n',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                const Text('Hit me up for a good time!'),
                              ],
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              onPressed: _incrementCounter,
                              tooltip: 'No Match',
                              child: Image.asset('assets/off_torch.png'),
                            ),
                            Container(
                              width: 140,
                            ),
                            FloatingActionButton(
                              onPressed: _incrementCounter,
                              tooltip: 'Match!',
                              child: Image.asset('assets/on_torch.png'),
                            ),
                          ],
                        ),
                      ])
                ] else if (profileCount == 3) ...[
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
                              children: [
                                const Text('\n Aggeliki Panagiotaki, 22 \n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800)),
                                const Text(
                                  ' ChemEng \n Lesbian \n Serious \n',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                const Text('I am a romantic at heart'),
                              ],
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              onPressed: _incrementCounter,
                              tooltip: 'No Match',
                              child: Image.asset('assets/off_torch.png'),
                            ),
                            Container(
                              width: 140,
                            ),
                            FloatingActionButton(
                              onPressed: _incrementCounter,
                              tooltip: 'Match!',
                              child: Image.asset(
                                'assets/on_torch.png',
                              ),
                            ),
                          ],
                        ),
                      ])
                ] else if (profileCount >= 4) ...[
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

class NotificationsPageState extends State<NotificationsPage>{
  var alreadySeen = [false, false, false];

 @override
  Widget build(BuildContext context){
     return MaterialApp(
          title: 'Notifications',
          home: Scaffold(
            appBar: AppBar(
              title: Text('My Notifications', style: GoogleFonts.getFont('Pacifico'),), 
              backgroundColor: const Color(0xFF741818),
          leading: GestureDetector(
            onTap: ()
               {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainMenu()),
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
                    alreadySeen[0] ? Icons.visibility_off : Icons.visibility,
                    color: alreadySeen[0] ? null : Color(0xFF741818),
                    semanticLabel: alreadySeen[0] ? 'You have read this!' : 'Tap to mark as seen',
                  ),
                  onTap:  (){
                     setState(() {
                      alreadySeen[0] ? null : (alreadySeen[0] = true);
                    });
                  }                  
                ),
                ListTile(
                  title: Text('You have a text from Dionysis Aggelopoulos'),
                  trailing: Icon(
                    alreadySeen[1] ? Icons.visibility_off : Icons.visibility,
                    color: alreadySeen[1] ? null : Color(0xFF741818),
                    semanticLabel: alreadySeen[1] ? 'You have read this!' : 'Tap to mark as seen',
                  ),
                  onTap: (){
                     setState(() {
                      alreadySeen[1] ? null : (alreadySeen[1] = true);
                    }); 
                  }                  
                ),
                ListTile(
                  title: Text('There is an update coming, check out our website for all the latest news'),
                  trailing: Icon(
                    alreadySeen[2] ? Icons.visibility_off : Icons.visibility,
                    color: alreadySeen[2] ? null : Color(0xFF741818),
                    semanticLabel: alreadySeen[2] ? 'You have read this!' : 'Tap to mark as seen',
                  ),
                  onTap: (){
                     setState(() {
                      alreadySeen[2] ? null : (alreadySeen[2] = true);
                    });
                  }
                ),
              ],           
            ),
          )
        );
  }
}



class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
//}
