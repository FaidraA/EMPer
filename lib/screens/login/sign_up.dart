import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EMPer Sign Up'),
      ),
      body: _buildContent(),
    );
  }
}

Widget _buildContent() {
  return Container(
    color: Colors.yellow,
    padding: EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          color: Colors.orange,
          child: SizedBox(
            height: 100,
          ),
        ),
        Container(
          color: Colors.red,
          child: SizedBox(
            height: 100,
          ),
        ),
        Container(
          color: Colors.purple,
          child: SizedBox(
            height: 100,
          ),
        ),
      ],
    ),
  );
}
