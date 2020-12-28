import 'package:flutter/material.dart';
import 'package:labyrinth/Screens/P1/CoordinatesForAb.dart';

import '../constants.dart';

class PuzzleRow extends StatelessWidget {
  final String hint;
  final String title;
  PuzzleRow({this.hint,this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.arrow_forward_sharp),
        FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CoordinatesForFirstAb(text: hint,)));
            },
            child: Text(title,
                style: kDefaultTextStyle)),
      ],
    );
  }
}