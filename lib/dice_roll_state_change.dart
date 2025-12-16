import 'package:flutter/material.dart';
import 'dart:math';

class DiceRollStateChange extends StatefulWidget {
  const DiceRollStateChange({super.key});

  @override
  State<DiceRollStateChange> createState() => _DiceRollStateChangeState();
}

class _DiceRollStateChangeState extends State<DiceRollStateChange> {
  final random = Random();
  int current = 1;
  void rollDice() {
    setState(() {
      current = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/dice-$current.png', height: 200),
        SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 15, 187, 130),
            foregroundColor: Colors.black,
            elevation: 6,
            shadowColor: Colors.black45,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: rollDice,
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
