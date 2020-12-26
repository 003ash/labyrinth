import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labyrinth/constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //Navigator.pushNamed(context, routeName)
        },
        child: Icon(Icons.arrow_forward_ios),
        backgroundColor: kBackgroundDark,
        elevation: 0,
      ),
      backgroundColor: kBackgroundDark,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              child: Image(
                image: AssetImage(
                  'images/logoInPurple.png'
                ),
              ),
            ),
            Container(
              child: Text(
                'Labyrinth',
                style: TextStyle(
                  fontSize: 55,
                  color: kTextColor,
                  fontFamily: 'Lobster'
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "The maze leading to Santa's bag",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 20
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
