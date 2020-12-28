import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labyrinth/CommonWidgets/PuzzleRow.dart';
import 'package:labyrinth/Screens/P1/CoordinatesForAb.dart';
import 'package:labyrinth/Screens/P1/Hint1.dart';
import 'package:labyrinth/Screens/P2/Puzzle2.dart';
import 'package:labyrinth/Screens/SlideTransition.dart';
import '../../constants.dart';

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
          child: Text(
            'Puzzle 1',
            style: TextStyle(
                fontFamily: kFontFamilyTitle, fontSize: kPuzzleTitleSize),
          ),
          color: kBackgroundDark,
        ),
      ),
      backgroundColor: kTextColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child:
                  Text('Tap here to reveal the hint', style: kDefaultTextStyle),
            ),
            SizedBox(
              height: 10,
            ),
            IconButton(
                icon: Icon(
                  Icons.lightbulb_outline,
                  size: 50,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hint1()));
                }),
            SizedBox(
              height: 30,
            ),
            PuzzleRow(hint: '''(2,2) (2,3) (2,4) (2,5) (2,6) (2,7)
(3,4) (3,5) (3,7)
(4,3) (4,5) (4,6) (4,7)''',title: 'Coordinates for 1st alphabet'
              ,),
            SizedBox(
              height: 20,
            ),
            PuzzleRow(hint: '''(5,2) (5,3) (5,4) (5.5) (5,6) (5,7)
(6,2) (6,7)
(7,2) (7,3) (7,4) (7,5) (7,6) (7,7)''',title: 'Coordinates for 2nd alphabet',),
            SizedBox(
              height: 20,
            ),
            PuzzleRow(hint: '''(8,7)
(9,7)
(10,2) (10,3) (10,4) (10,5) (10,6) (10,7) 
(11,7)
(12,7)''',title: 'Coordinates for 3rd alphabet'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.arrow_forward_sharp),
                FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CoordinatesForFirstAb(text: "The number that the triskaidekaphobic people are scared of")));
                    },
                    child:
                        Text('Hint for the number', style: kDefaultTextStyle)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}