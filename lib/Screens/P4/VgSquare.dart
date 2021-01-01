import 'package:flutter/material.dart';

import '../../constants.dart';

class VgSquare extends StatelessWidget {
  VgSquare({this.child});
  final Widget child;
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
          padding: const EdgeInsets.all(30),
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
                    child: child,
            ),
          ]),
        ),
      ),
    )));
  }
}

class VgSquareRow extends StatelessWidget {
  VgSquareRow({this.text1,this.text2,this.text3,this.key1,this.key2,this.key3});
  final String text1;
  final String text2;
  final String text3;
  final String key1;
  final String key2;
  final String key3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(keys: key1,text: text1,),
        text2 == null ? Text('') :TextButton(keys: key2,text: text2,),
        text3 == null ? Text('') :TextButton(keys: key3, text: text3),
      ],
    );
  }
}

class TextButton extends StatelessWidget {
  TextButton({this.keys,this.text});
  final String keys;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: (){
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 750),
        content: Text("Key is : $keys",style: kDefaultTextStyle.copyWith(fontSize: 20),),
        action: SnackBarAction(
          label: '',textColor: Colors.white,
          onPressed: (){},
        ),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }, child: Text(
        text,style: kDefaultTextStyle
    )
    );
  }
}
