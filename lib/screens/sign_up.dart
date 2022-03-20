import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/globals.dart' as globals;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final userMail = TextEditingController();
  TextEditingController password = TextEditingController();

  String dropdownValue = "Male";
  var sexualities = ['Straight', 'Gay', 'Other'];

  String text = 'arxikopoihmeni timi';
  void _setText() {
    setState(() {
      text = globals.userMail;
    });
  }

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
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text('Submit your Profile ...',
                      style: GoogleFonts.pacifico(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  const SizedBox(
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
                          _setText();
                        },
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('User email:',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black,
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 80,
                    width: 250,
                    child: TextField(
                      onChanged: (value) => globals.userMail = value,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF741818))),
                          border: OutlineInputBorder(),
                          hintText: 'ex abc@gmail.com'),
                      cursorColor: Color(0xFF741818),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('User Password:',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black,
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 80,
                    width: 250,
                    child: TextField(
                      onChanged: (value) => globals.password = value,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF741818))),
                          border: OutlineInputBorder(),
                          hintText: 'ex password123#!'),
                      cursorColor: Color(0xFF741818),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Your sexual orientation is: ',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black,
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  // ------------ ERROR CODE. NEEDS FIXING ---------------
                  // DropdownButton(
                  //   value: dropdownValue,
                  //   items: <DropdownMenuItem>[
                  //     DropdownMenuItem(
                  //         child: Text("Straight"), value: "Straight"),
                  //     DropdownMenuItem(
                  //       child: Text("Gay"),
                  //       value: "Gay",
                  //     ),
                  //     DropdownMenuItem(
                  //       child: Text("Other"),
                  //       value: "Other",
                  //     ),
                  //   ],
                  //   onChanged: (value) {
                  //     setState(() {
                  //       dropdownValue = value;
                  //     });
                  //   },
                  // )
                  // ------------ ERROR CODE. NEEDS FIXING ---------------
                  // ---------------- PLACE HOLDER TEXTFIELD -------------
                  Container(
                    height: 80,
                    width: 250,
                    child: TextField(
                      onChanged: (value) => globals.datingPref = value,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF741818))),
                          border: OutlineInputBorder(),
                          hintText: 'Straight, Gay or Other'),
                      cursorColor: Color(0xFF741818),
                    ),
                  ),
                  // ---------------- PLACE HOLDER TEXTFIELD -------------
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Your reationship preference:',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black,
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 80,
                    width: 250,
                    child: TextField(
                      onChanged: (value) => globals.relationship = value,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF741818))),
                          border: OutlineInputBorder(),
                          hintText: 'ex Serious or Casual'),
                      cursorColor: Color(0xFF741818),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Your NTUA school:',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black,
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 80,
                    width: 250,
                    child: TextField(
                      onChanged: (value) => globals.password = value,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF741818))),
                          border: OutlineInputBorder(),
                          hintText: 'ex ECE, CHEM, METAL, '),
                      cursorColor: Color(0xFF741818),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Your profile description:',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 80,
                    width: 250,
                    child: TextField(
                      onChanged: (value) => globals.description = value,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF741818))),
                          border: OutlineInputBorder(),
                          hintText: 'ex This is my Description'),
                      cursorColor: Color(0xFF741818),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('Add your profile picture:',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  )),
              Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey,
                  child: Icon(Icons.add_a_photo))
            ],
          ),
        ),
      ),
    );
  }
}
