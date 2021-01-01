import 'package:flutter/material.dart';

import '../../constants.dart';

class Hint4 extends StatelessWidget {
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
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: kBackgroundDark,width: 2)
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15,20,5,20),
              child: Column(
                children: [
                  Icon(Icons.lightbulb_outline,size: 60,),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                      color: kLightColor,
                      child: Text(
                        '''--. ..- .-.    -..- .-. .-..    ...- ..-.    --. ..- .-.     . -... .---     ...- .-    .. ...- - .-. .- .-. . .-.    ..-. -.. .... -. . .-.
... ...- .- --.-     --. ..- .-.     - ...- .. .-. .-      .--. ...- -.-. ..- .-. .     --. .-. -.- --.     ...- .-     --. ..- -. --.     . -... .---    -. .- --.-     --.. -. --. .--. ..-     ...- --.     .--- ...- --. ..-     --. ..- .-.     .--. -... -.-- .... --.. .-     --. -...     --.- .-. .--. ...- -.-. ..- .-. .     --. ..- .-.     --. .-. -.- --.''',
                        style: kDefaultTextStyle,
                      )
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
