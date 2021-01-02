import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '';
import '../../constants.dart';

_launchURL() async {
  const url = 'https://www.beautifyconverter.com/steganographic-decoder.php';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Hint6 extends StatelessWidget {
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
                        'Please use this link :-',
                        style: kDefaultTextStyle,
                      ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed:_launchURL,
                    child: Text
                      ('https://www.beautifyconverter.com/steganographic-decoder.php',style: kDefaultTextStyle.copyWith(color: Colors.black,decoration: TextDecoration.underline,)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'This will lead you to a website where you can decode the text hidden in the image. Please download the image in order to use it.',style: kDefaultTextStyle,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
