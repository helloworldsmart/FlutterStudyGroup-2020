import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  // int leftDiceNumber = 1;
  // int rightDiceNumber = 1;
  int diceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    diceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$diceNumber.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    diceNumber = Random().nextInt(6) + 1;
                  });
                  print('Right button get pressed!');
                },
                child: Image(
                  image: AssetImage('images/dice$diceNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}