import 'package:flutter/material.dart';
import 'package:labyrinth/Screens/P4/VgSquare.dart';
import 'package:labyrinth/Screens/Puzzle5.dart';
import 'package:labyrinth/constants.dart';
import 'package:labyrinth/Screens/SlideTransition.dart';

import 'Hint4.dart';

class Puzzle4 extends StatelessWidget {
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
                    MySlideTransition(builder: (context) => Puzzle5());
                Navigator.push(context, route);
              })
        ],
        backgroundColor: kBackgroundDark,
        centerTitle: true,
        title: Title(
          child: Text('Puzzle 4',style: TextStyle(
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
                      MaterialPageRoute(builder: (context) => Hint4()));
                }),
            SizedBox(
              height: 30,
            ),
        Column(
          children: [
            Puzzle4Row(child: Column(
              children: [
                VgSquareRow(text1: 'ti',text2: 'es',text3: 'xy',key1: 'bu',key2: 'bk',key3: 'ua',),
                VgSquareRow(text1: 'bx',text2: 'oi',text3: 'lf',key1: 'nd',key2: 'da',key3: 'bb',),
                VgSquareRow(text1: 'xm',text2: 'ub',text3: 'wl',key1: 'ui',key2: 'st',key3: 'he',),
                VgSquareRow(text1: 'tr',text2: 'bf',text3: 'ch',key1: 'pa',key2: 'ss',key3: 'wo',),
                VgSquareRow(text1: 'yh',key1: 'rd'),
              ],
            ),title: 'Line 1',),
            SizedBox(
              height: 20,
            ),
            Puzzle4Row(child: Column(
              children: [
                VgSquareRow(text1: 'wc',text2: 'ho',text3: 'he',key1: 'bu',key2: 'bk',key3: 'ua',),
                VgSquareRow(text1: 'eh',text2: 'vq',text3: 'vb',key1: 'nd',key2: 'da',key3: 'bb',),
                VgSquareRow(text1: 'lm',text2: 'kh',text3: 'br',key1: 'ui',key2: 'st',key3: 'he',),
                VgSquareRow(text1: 'ss',text2: 'da',text3: 'gs',key1: 'pa',key2: 'ss',key3: 'wo',),
              ],
            ),title: 'Line 2'),
            SizedBox(
              height: 20,
            ),
            Puzzle4Row(child: Column(
              children: [
                VgSquareRow(text1: 'md',text2: 'hc',text3: 'ok',key1: 'rd',key2: 'bu',key3: 'bk',),
                VgSquareRow(text1: 'mc',text2: 'nq',text3: 'wh',key1: 'ua',key2: 'nd',key3: 'da',),
                VgSquareRow(text1: 'fr',text2: 'lk',text3: 'gw',key1: 'bb',key2: 'ui',key3: 'st',),
                VgSquareRow(text1: 'lx',key1: 'he'),
              ],
            ),title: 'Line 3'),
            SizedBox(
              height: 20,
            ),
            Puzzle4Row(child: Column(
              children: [
                VgSquareRow(text1: 'dp',text2: 'jg',text3: 'ys',key1: 'pa',key2: 'ss',key3: 'wo',),
                VgSquareRow(text1: 'vg',key1: 'rd'),
              ],
            ),title: 'Line 4')
          ],
        ),
          ],
        ),
      ),
    );
  }
}

class Puzzle4Row extends StatelessWidget {
  Puzzle4Row({this.child,this.title});
  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.arrow_forward_sharp),
        FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> VgSquare(child: child
                    ),
                  ),
                );
              },
            child: Text(title,
                style: kDefaultTextStyle)),
      ],
    );
  }
}
