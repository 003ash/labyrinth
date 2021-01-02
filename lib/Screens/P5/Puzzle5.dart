import 'package:flutter/material.dart';
import 'package:labyrinth/Screens/P5/subScreen.dart';
import 'package:labyrinth/Screens/P6/Puzzle6.dart';
import '../../constants.dart';
import '../SlideTransition.dart';
import 'Hint5.dart';

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
          IconButton(icon: Icon(Icons.arrow_forward_ios,color: kTextColor,), onPressed: () {
            Route route =
            MySlideTransition(builder: (context) => Puzzle6());
            Navigator.push(context, route);
          })
        ],
        backgroundColor: kBackgroundDark,
        centerTitle: true,
        title: Title(
          child: Text(
              'Puzzle 5',style: TextStyle(
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
                        MaterialPageRoute(builder: (context) => Hint5()));
                  }),
              SizedBox(height: 20,),
              Text('Q) What is the name of my mom?  ',style: kDefaultTextStyle,),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_sharp),
                  FlatButton(onPressed: (){
                    final snackBar = SnackBar(
                      duration: Duration(milliseconds: 1250),
                      content: Text("Seriously !!!???",style: kDefaultTextStyle.copyWith(fontSize: 20),),
                      action: SnackBarAction(
                        label: '',textColor: Colors.white,
                        onPressed: (){},
                      ),
                    );
                    Scaffold.of(context).showSnackBar(snackBar);
                  }, child: Text('Varsha', style: kDefaultTextStyle,))
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_sharp),
                  FlatButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SubScreen()));
                  }, child: Text('Shilpa', style: kDefaultTextStyle,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
