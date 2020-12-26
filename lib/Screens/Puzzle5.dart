import 'package:flutter/material.dart';

import '../constants.dart';

class Puzzle5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: kTextColor,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(icon: Icon(Icons.arrow_forward_ios,color: kTextColor,), onPressed: (){})
        ],
        backgroundColor: kBackgroundDark,
        centerTitle: true,
        title: Title(
          child: Text(
              'Puzzle 5'
          ),
          color: kBackgroundDark,
        ),
      ),
      backgroundColor: kTextColor,
      body: Text(''),
    );;
  }
}
