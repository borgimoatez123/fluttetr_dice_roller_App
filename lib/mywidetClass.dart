import 'package:flutter/material.dart';
import 'package:fristappdisce/diceRoller.dart';

class MyWidget extends StatelessWidget {
  const MyWidget(this.color1,this.color2,{super.key});
  final Color color1;
  final Color color2;
  void rollDice() {
    // Function to handle dice roll logic
    // You can implement the logic to change the image based on the roll
  }
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Diceroller(),
    ),
    );
  }
}
