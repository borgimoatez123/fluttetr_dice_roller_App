import 'package:flutter/material.dart';
var text; // global variable for text
class MyTextstyle extends StatelessWidget {
 const MyTextstyle(this.text,{super.key}); // constructor with text parameter
  // this widget will display text with custom style
  // it is a stateless widget because it does not change over time
  // it is immutable and does not have any state that can change
final String text; // final variable to hold the text value
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}