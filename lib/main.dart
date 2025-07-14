import 'package:flutter/material.dart';
import 'mywidetClass.dart';
void main() {
  //basic wiget tree
  runApp(
      const MaterialApp(
      home: Scaffold(
       
        body: MyWidget(
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 68, 21, 149), // arguments for colors = a3tih les colors 
        ),
    ),
  )); 

}

