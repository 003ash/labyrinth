import 'package:flutter/material.dart';
import 'package:labyrinth/constants.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL() async {
  const url = 'https://drive.google.com/file/d/1O7wZHwuWKCBNjpQmm-bOTplhMgA8ur-h/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundDark,
        appBar: AppBar(
          backgroundColor: kBackgroundDark,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(icon: Icon(Icons.download_sharp,size: 30,), onPressed: () {
                _launchURL();
              }),
            )
          ],
        ),
        body: Center(
          child: Image(
            image: AssetImage(
                'images/finalSteg.png'
            ),
          ),
        )
    );
  }
}

