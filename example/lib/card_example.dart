import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({
    Key key,
    this.color = Colors.indigo,
    this.text = "Card Example",
    this.number = "Card Number",
    this.imageLocation ="assets/images/ic_launcher.png",
  }) : super(key: key);
  final Color color;
  final String text;
  final String number;
  final String imageLocation;

  @override
  Widget build(BuildContext context) {


    return Container(
      height: 450,
      width: 320,

      // Warning: hard-coding values like this is a bad practice
      padding: EdgeInsets.all(38.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 7.0,
          color: Colors.transparent.withOpacity(0.3),
        ),
      ),

      child: new Column(
        children: [
          new Container(
            child: Text(
              text+number,
              style: TextStyle(
                fontSize: 36.0,
                // color: Colors.white,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w900,
              ),
            ),

          ),
/*
    new Container(
    decoration: BoxDecoration(
    color: Colors.orangeAccent,
    image: DecorationImage(
    image: AssetImage("assets/images/romantic-dinner.png"),
    fit: BoxFit.fitWidth,
    alignment: Alignment.topCenter,
    ),
    ),),
*/
          new Container(
            color: color,
            //    color: Colors.grey[200],

            child: new Image.asset(this.imageLocation),
            alignment: Alignment.center,
          ),
        ],
      ),

    );
  }
}
