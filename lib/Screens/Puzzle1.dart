import 'package:flutter/material.dart';
import 'package:labyrinth/Screens/Puzzle2.dart';
import 'package:labyrinth/Screens/SlideTransition.dart';
import '../constants.dart';

class Puzzle1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: kTextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: kTextColor,
              ),
              onPressed: () {
                Route route =
                    MySlideTransition(builder: (context) => Puzzle2());
                Navigator.push(context, route);
              })
        ],
        backgroundColor: kBackgroundDark,
        centerTitle: true,
        title: Title(
          child: Text('Puzzle 1'),
          color: kBackgroundDark,
        ),
      ),
      backgroundColor: kTextColor,
      body: Text(''),
    );
  }
}
