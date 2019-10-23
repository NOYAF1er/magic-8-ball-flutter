import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: BallView(),
        ),
      ),
    );

class BallView extends StatefulWidget {
  @override
  _BallViewState createState() => _BallViewState();
}

class _BallViewState extends State<BallView> {
  int _ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                _ballNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$_ballNumber.png'),
          ),
        ),
      ],
    );
  }
}
