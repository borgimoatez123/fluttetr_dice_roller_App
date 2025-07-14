import 'package:flutter/material.dart';
// to make the widget stateful
// you need to split your widget into two parts: 2 classes 
// one for the widget itself and one for its state
// the widget class is a stateless widget that does not change over time
// the state class is a stateful widget that can change over time
class Diceroller extends StatefulWidget {
  const Diceroller({super.key});

  @override
  State<Diceroller> createState() => _DicerollerState();
}
class _DicerollerState extends State<Diceroller> {
  int diceNumber = 1; // initial value for dice number

  void rollDice() {
    setState(() {
      // this function will change the state of the widget
      // and rebuild it with a new dice number
      diceNumber = (diceNumber % 6) + 1; // change the dice number
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$diceNumber.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: rollDice,
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              side: const BorderSide(color: Colors.white, width: 2),
            ),
            child: const Text("Roll Dice", style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}