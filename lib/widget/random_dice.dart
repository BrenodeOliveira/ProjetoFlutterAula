import 'dart:math';

import 'package:flutter/material.dart';

class RandonDice extends StatefulWidget {
  const RandonDice({Key? key}) : super(key: key);

  @override
  State<RandonDice> createState() => _RandonDiceState();
}

class _RandonDiceState extends State<RandonDice> {
  var generateDice = 1;

  @override
  void initState() {
    super.initState();
    generateRandomNumber();
  }

  void generateRandomNumber() {
    setState(() {
      generateDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: generateRandomNumber,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/images/dice$generateDice.png'),
      ),
    );
  }
}
