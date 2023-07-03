import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.deepPurple,
          body: GradientContainer([
            const Color.fromARGB(255, 71, 39, 126),
            const Color.fromARGB(255, 141, 78, 248)
          ]),
        ),
        debugShowCheckedModeBanner: false),
  );
}
