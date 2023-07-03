import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';
import "dart:math";

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
//({Key? key}) : super(key: key)
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = Random().nextInt(6) + 1;

  void rollDice() {
    setState(() {
      var nextNumber = Random().nextInt(6) + 1;
      diceNumber = nextNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const StyledText("Roll the dice!"),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          "assets/images/dice-$diceNumber.png",
          width: 200,
          height: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 28)),
          onPressed: rollDice,
          child: const StyledText("Roll again!"),
        )
      ],
    );
  }
}
