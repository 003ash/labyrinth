import 'package:flutter/material.dart';
import 'package:labyrinth/Screens/Puzzle1.dart';
import 'package:labyrinth/Screens/Puzzle5.dart';
import 'package:labyrinth/Screens/WelcomeScreen.dart';
import 'Screens/Puzzle2.dart';
import 'Screens/Puzzle3.dart';
import 'Screens/Puzzle4.dart';

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
          'puzzle5':(context) => Puzzle5()
        },
  ));
}


