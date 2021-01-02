import 'package:flutter/material.dart';
import 'package:labyrinth/Screens/P5/QRScreen.dart';

import '../../constants.dart';

class SubScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundDark,
      ),
      backgroundColor: kTextColor,
      body: Builder(
        builder: (context)=> Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Expanded(
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => QRScreen(imageUrl: 'images/sentence 1.png',)));
                    },
                    child: Center(
                      child: Text(
                        'Tap here to open 1st QR code',style: kDefaultTextStyle,
                      ),
              ),
                  )),
              Expanded(
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => QRScreen(imageUrl: 'images/sentence 2.png',)));
                    },
                    child: Center(
                      child: Text(
                        'Tap here to open 2nd QR code',style: kDefaultTextStyle,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );;
  }
}
