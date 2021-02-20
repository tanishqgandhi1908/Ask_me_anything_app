import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: SetDetails(),
    ),
  );
}

class SetDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Ask Me Anything",
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                fontFamily: 'Pangolin'),
          ),
        ),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: AskApp(),
    );
  }
}

class AskApp extends StatefulWidget {
  @override
  _AskAppState createState() => _AskAppState();
}

class _AskAppState extends State<AskApp> {
  int imageNumber = 1;

  void setImage() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setImage();
                },
                child: Image.asset('images/ball$imageNumber.png')),
          ),
        ],
      ),
    );
  }
}
