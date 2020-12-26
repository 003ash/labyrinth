import 'package:flutter/material.dart';
import 'package:labyrinth/Screens/Puzzle4.dart';

import '../constants.dart';
import 'SlideTransition.dart';

class Puzzle3 extends StatelessWidget {
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
                    MySlideTransition(builder: (context) => Puzzle4());
                Navigator.push(context, route);
              })
        ],
        backgroundColor: kBackgroundDark,
        centerTitle: true,
        title: Title(
          child: Text('Puzzle 3'),
          color: kBackgroundDark,
        ),
      ),
      backgroundColor: kTextColor,
      body: Text(''),
    );
    ;
  }
}
