import 'package:flutter/material.dart';
import 'package:labyrinth/CommonWidgets/PuzzleRow.dart';
import 'package:labyrinth/Screens/P4/Puzzle4.dart';
import '../../constants.dart';
import '../SlideTransition.dart';
import 'Hint3.dart';

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
          child: Text('Puzzle 3',style: TextStyle(
              fontFamily: kFontFamilyTitle,
              fontSize: kPuzzleTitleSize,
          ),),
          color: kBackgroundDark,
        ),
      ),
      backgroundColor: kTextColor,
      body: Padding(
        padding: EdgeInsets.all(12.0),
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
                      MaterialPageRoute(builder: (context) => Hint3()));
                }),
            SizedBox(
              height: 30,
            ),
            PuzzleRow(title: 'Image 1',child: Image(
              image: AssetImage(
                'images/1st staff.jpeg'
              ),
            ),
            ),
            SizedBox(
              height: 20,
            ),
            PuzzleRow(title: 'Image 2',child: Image(
              image: AssetImage(
                  'images/2nd staff.jpeg'
              ),
            ),
            ),
            SizedBox(
              height: 20,
            ),
            PuzzleRow(title: 'Image 3',child: Image(
              image: AssetImage(
                  'images/3rd staff.jpeg'
              ),
            ),
            ),
            SizedBox(
              height: 20,
            ),
            PuzzleRow(title: 'Image 4',child: Image(
              image: AssetImage(
                  'images/4th staff.jpeg'
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
