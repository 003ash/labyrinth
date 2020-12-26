import 'package:flutter/material.dart';
import 'package:labyrinth/constants.dart';

class Hint1 extends StatelessWidget {
  final String hintString = "You have a blue diary with puzzle like shapes on its rear end. You can use that to solve this puzzle. This puzzle will lead to a 3-alphabet word and a number at the end.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kLightColor,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined,color: kBackgroundDark,), onPressed:(){Navigator.pop(context);}),
      ),
      body: Container(
        color: kLightColor,
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: kBackgroundDark,width: 2)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Icon(Icons.lightbulb_outline,size: 60,),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    color: kLightColor,
                    child: Text(
                        hintString,style: kDefaultTextStyle
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
