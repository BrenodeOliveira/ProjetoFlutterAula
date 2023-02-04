import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/question_button.dart';
import 'finished_quiz_screen.dart';
import 'model/question_model.dart';

class QuizScreen extends StatefulWidget {
  static const String id = '/quiz';

  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<QuestionModel> questions = [];
  var questionIndex = 0;
  var score = 0;

  @override
  void initState() {
    super.initState();
    questions = loadQuestions();
  }

  void onOptionPressed(int selectedOption) {
    final currentQuestion = questions[questionIndex];

    if (selectedOption == currentQuestion.answer) {
      score++;
    }

    goToNextQuestion();
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuestion.question,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 32),
              ListView.separated(
                itemCount: currentQuestion.options.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return QuestionButton(
                    options: currentQuestion.options[index],
                    onPressed: () => { onOptionPressed(index) },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void goToNextQuestion() {
    if (questionIndex == questions.length - 1) {
      Navigator.pushReplacementNamed(context, FinishQuizScreen.id,
          arguments: FinishQuizScreenArguments(score: score));
    } else {
      setState(() {
        questionIndex++;
      });
    }
  }
}

List<QuestionModel> loadQuestions() {
  return [
    QuestionModel(
        question: 'Qual o país que mais produz café no mundo ?',
        options: ['Canadá', 'Índia', 'Argentina', 'Brasil', 'Etiopia'],
        answer: 3),
    QuestionModel(
        question: 'País conhecido por ser o mais fechado do mundo ?',
        options: ['Myanmar', 'Coreia do Norte', 'Armenia', 'Iemen', 'Vietnã'],
        answer: 1),
    QuestionModel(
        question: 'País que possui a Groenlandia como território',
        options: [
          'Finlandia',
          'Canada',
          'Reino Unido',
          'Estados Unidos',
          'Dinamarca'
        ],
        answer: 4),
    QuestionModel(
        question: 'País com maior media de QI',
        options: ['China', 'Alemanha', 'Japão', 'Coreia do Sul', 'Noruega'],
        answer: 3),
    QuestionModel(
        question: 'País com maior IDH',
        options: ['Noruega', 'Reino Unido', 'Canada', 'Holanda', 'Mexico'],
        answer: 0),
    QuestionModel(
        question: 'Continente menos industrializado',
        options: ['África', 'Ásia', 'Oceania'],
        answer: 0),
  ];
}
