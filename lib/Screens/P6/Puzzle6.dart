import 'package:flutter/material.dart';
import 'package:labyrinth/Screens/P6/ImageScreen.dart';
import 'ImageScreen.dart';
import '../../constants.dart';
import 'Hint6.dart';

class Puzzle6 extends StatelessWidget {
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
        backgroundColor: kBackgroundDark,
        centerTitle: true,
        title: Title(
          child: Text(
            'Puzzle 6',style: TextStyle(
              fontFamily: kFontFamilyTitle,
              fontSize: kPuzzleTitleSize
          ),
          ),
          color: kBackgroundDark,
        ),
      ),
      backgroundColor: kTextColor,
      body: Builder(
        builder: (context)=> Padding(
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
                        MaterialPageRoute(builder: (context) => Hint6()));
                  }),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_sharp),
                  FlatButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ImageScreen()));
                  }, child: Text('Image', style: kDefaultTextStyle,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
