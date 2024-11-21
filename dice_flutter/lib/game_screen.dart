import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class DiceRollerScreen extends StatefulWidget {
  const DiceRollerScreen({super.key});

  @override
  State<DiceRollerScreen> createState() => _DiceRollerScreenState();
}

class _DiceRollerScreenState extends State<DiceRollerScreen> {
  int diceResult = 1;

  void rollDice() {
    setState(() {
      diceResult = Random().nextInt(6) + 1; 
    });
  }

  String getDiceImage() {
    return 'assets/dice$diceResult.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const FaIcon(
          FontAwesomeIcons.dice,
          size: 40,
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
        title: const Text(
          'Dice Roller',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              getDiceImage(),
              width: 250,
              height: 250,
            ),
          ),
          const SizedBox(height: 40), 
          TextButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white, 
              textStyle: const TextStyle(fontSize: 38),
            ),
            onPressed: rollDice,
            label: Padding(
              padding: const EdgeInsets.all(18.0),
              child: const Text('Roll Dice'),
            ),
            icon: FaIcon(
          FontAwesomeIcons.dice,
          size: 40,
          color: Colors.white,),
          ),
        ],
      ),
    );
  }
}