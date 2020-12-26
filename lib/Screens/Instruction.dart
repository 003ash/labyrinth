import 'package:flutter/material.dart';
import 'package:labyrinth/Screens/P1/Puzzle1.dart';
import 'package:labyrinth/constants.dart';

class InstructionPage extends StatelessWidget {
  final String instructionString = '''
Greetings Santa!
In this world, where privacy doesn't exist, cryptography and encryption techniques are the ways that humans have come up with to guard the privacy. Each puzzle in the following labyrinth leads to a clue which is a hint to solve the next puzzle. You might have to google the hint in order to know how to use it.''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundDark,
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Instructions',
              style: TextStyle(
                  color: kTextColor, fontSize: 40, fontFamily: 'Pacifico'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 0),
            child: Text(
              instructionString,
              style: TextStyle(
                  color: kTextColor, fontSize: 27, fontFamily: 'Pacifico'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
            child: FlatButton(
              splashColor: kTextColor,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Puzzle1()));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: kTextColor),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Take me to the first puzzle!',
                      style: TextStyle(fontSize: 20, color: kBackgroundDark),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
