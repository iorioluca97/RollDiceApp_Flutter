import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

const String username = "Luca";

var beginAlignment = Alignment.bottomRight;
var endAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradients, {super.key});

  final List<Color> gradients;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: beginAlignment,
        end: endAlignment,
        colors: gradients,
      )),
      child: const Center(child: DiceRoller()),
    );
  }
}
