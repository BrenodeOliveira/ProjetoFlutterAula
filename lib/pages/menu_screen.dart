// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_aula_3/pages/dice_screen.dart';
import 'package:projeto_aula_3/pages/home_page.dart';
import 'package:projeto_aula_3/widget/button_spaced.dart';

import '../quiz/quiz_screen.dart';

class MenuScreen extends StatelessWidget {
  static const String id = '/menu_screen';

  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Menu inicial',
              style: TextStyle(fontSize: 42),
            ),
            SizedBox(
              height: 8,
              width: double.infinity,
            ),
            IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ButtonSpaced(title: 'Cartão Pessoal', route: MyHomePage.id, buttonColor: Colors.teal),
                  ButtonSpaced(title: 'Jogar dados', route: DiceScreen.id, buttonColor: Colors.red),
                  ButtonSpaced(title: 'Jogar questões', route: QuizScreen.id, buttonColor: Colors.blue,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
