import 'package:flutter/material.dart';
import 'package:labyrinth/CommonWidgets/PuzzleRow.dart';
import 'package:labyrinth/Screens/P2/Hint2.dart';
import 'package:labyrinth/Screens/Puzzle3.dart';
import '../../constants.dart';
import '../SlideTransition.dart';

class Puzzle2 extends StatelessWidget {
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
                    MySlideTransition(builder: (context) => Puzzle3());
                Navigator.push(context, route);
              })
        ],
        backgroundColor: kBackgroundDark,
        centerTitle: true,
        title: Title(
          child: Text('Puzzle 2',style: TextStyle(
              fontFamily: kFontFamilyTitle,
              fontSize: kPuzzleTitleSize
          ),),
          color: kBackgroundDark,
        ),
      ),
      backgroundColor: kTextColor,
      body: Padding(
        padding: EdgeInsets.all(12),
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
                      MaterialPageRoute(builder: (context) => Hint2()));
                }),
            SizedBox(
              height: 30,
            ),
            PuzzleRow(title:'1st sentence',hint: 'Pbatenghyngvbaf ba fbyivat lbhe svefg chmmyr.',),
            SizedBox(
              height: 20,
            ),
            PuzzleRow(title: '2nd sentence',hint: 'Gur uvag sbe lbhe arkg chmmyr vf gur jbeq sbe n ybat fgvpx hfrq nf n fhccbeg jura jnyxvat be pyvzovat be nf n jrncba.',),
            SizedBox(
              height: 20,
            ),
            PuzzleRow(title: '3rd sentence',hint: 'Guvf vf nyfb gur anzr bs abgngvba hfrq va Oevgvfu zhfvp gurbel. ',)
          ],
        ),
      ),
    );
  }
}
