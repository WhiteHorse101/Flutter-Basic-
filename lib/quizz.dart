import 'package:flutter/material.dart';
import './questions.dart';
import 'answer.dart';

class Quizz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final Function answerQuestion;

  Quizz(@required this.questions, @required this.answerQuestion,
      @required this.questionindex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionindex]['question'],
        ),
        ...(questions[questionindex]['answer'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
