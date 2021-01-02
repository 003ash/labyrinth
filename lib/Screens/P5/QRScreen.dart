import 'package:flutter/material.dart';
import 'package:labyrinth/constants.dart';

class QRScreen extends StatelessWidget {
  QRScreen({this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTextColor,
      appBar: AppBar(
        backgroundColor: kBackgroundDark,
        elevation: 0,
      ),
      body: Center(
        child: Image(
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
