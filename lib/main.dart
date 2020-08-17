import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade500,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.blueGrey[900],
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
  int leftDiceNumber = 2;
  int rightDiceNumber = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: FlatButton(
                  onPressed: null,
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: null,
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: FlatButton(
            color: Colors.yellow,
            onPressed: () {
              setState(() {
                rightDiceNumber = Random().nextInt(6) + 1;
                leftDiceNumber = Random().nextInt(6) + 1;
              });
            },
            child: Text('Press Me'),
          ),
        )
      ],
    );
  }
}
