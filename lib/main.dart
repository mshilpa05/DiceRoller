import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee',style: TextStyle(fontFamily: 'Pacifico',color: Colors.white,fontWeight:FontWeight.bold)),
          backgroundColor: Colors.blueGrey,
        ),
        body: DiceGame(),
      ),
    ),
  );
}

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftdicenumber=1;
  int rightdicenumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceNumber();
                print("Left Button Got pressed");
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceNumber();
                print("Right button got pressed");
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void changeDiceNumber(){
    setState(() {
      rightdicenumber=Random().nextInt(6)+1;
      leftdicenumber=Random().nextInt(6)+1;
    });
  }
}

