import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinishQuizScreen extends StatelessWidget {
  static const String id = '/finished_quiz_screen';

  const FinishQuizScreen({Key? key, required this.args}) : super(key: key);

  final FinishQuizScreenArguments args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Text(
          'Sua pontuação foi de: \n${args.score}',
          style: TextStyle(fontSize: 32),
          textAlign: TextAlign.center,
        )),
      ),
    );
  }
}

class FinishQuizScreenArguments {
  FinishQuizScreenArguments({required this.score});

  int score;
}
