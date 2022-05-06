import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// The dice images will be changing, i.e let's use stateful widget
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumberLeft = 1;
  int diceNumberRight = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    // the code which could modify the state of app should be written in setState() method
                    setState(() {
                      // Random().nextInt(MAX) - Range = [0,MAX]
                      diceNumberLeft = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/dice$diceNumberLeft.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      diceNumberRight = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/dice$diceNumberRight.png'))),
        ],
      ),
    );
  }
}
