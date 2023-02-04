import 'package:flutter/material.dart';
import 'package:projeto_aula_3/widget/random_dice.dart';

class DiceScreen extends StatelessWidget {
  static const String id = '/dice_screen';

  const DiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8A05BE),
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              Expanded(child: RandonDice()),
              Expanded(child: RandonDice()),
            ],
          ),
        ),
      ),
    );
  }
}

