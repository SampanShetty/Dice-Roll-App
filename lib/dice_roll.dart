import 'package:dice_roll/home.dart';
import 'package:flutter/material.dart';

class DiceRollPage extends StatelessWidget {
  const DiceRollPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
