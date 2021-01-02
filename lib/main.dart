import 'package:flutter/material.dart';
import 'package:labyrinth/Screens/Instruction.dart';
import 'package:labyrinth/Screens/P1/Puzzle1.dart';
import 'package:labyrinth/Screens/P5/Puzzle5.dart';
import 'package:labyrinth/Screens/WelcomeScreen.dart';
import 'Screens/P2/Puzzle2.dart';
import 'Screens/P3/Puzzle3.dart';
import 'Screens/P4/Puzzle4.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'welcomeScreen',
        routes: {
          'welcomeScreen':(context) => WelcomeScreen(),
          'puzzle1':(context) => Puzzle1(),
          'puzzle2':(context) => Puzzle2(),
          'puzzle3':(context) => Puzzle3(),
          'puzzle4':(context) => Puzzle4(),
          'puzzle5':(context) => Puzzle5(),
          'instructions':(context) => InstructionPage(),
        },
  ));
}


