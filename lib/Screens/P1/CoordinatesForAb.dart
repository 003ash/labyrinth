import 'package:flutter/material.dart';
import '../../constants.dart';

class CoordinatesForFirstAb extends StatelessWidget {
  CoordinatesForFirstAb({this.text});
  final String text;
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
                        text,style: kDefaultTextStyle
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
