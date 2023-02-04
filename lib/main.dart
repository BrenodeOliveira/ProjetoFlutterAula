// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_aula_3/pages/dice_screen.dart';
import 'package:projeto_aula_3/pages/home_page.dart';
import 'package:projeto_aula_3/pages/menu_screen.dart';
import 'package:projeto_aula_3/quiz/finished_quiz_screen.dart';
import 'package:projeto_aula_3/quiz/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Image',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MenuScreen.id,
      routes: {
        MenuScreen.id: (context) => const MenuScreen(),
        MyHomePage.id: (context) => const MyHomePage(),
        DiceScreen.id: (context) => const DiceScreen(),
        QuizScreen.id: (context) => const QuizScreen(),
        FinishQuizScreen.id: (context) => FinishQuizScreen(
              args: ModalRoute.of(context)?.settings.arguments
                  as FinishQuizScreenArguments,
            ),
      },
    );
  }
}
