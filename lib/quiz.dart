import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function() onAnswered;

  const Quiz({super.key, required this.questions, required this.selectedQuestion, required this.onAnswered});

  bool get hasSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {

    List<String> answers = hasSelectedQuestion ? questions[selectedQuestion].cast()['answers'] : [];

    return Column(
      children: [
        Question(text: questions[selectedQuestion]['text'].toString()),
        ...answers.map((t) => Answer(text: t, onSelected: onAnswered)).toList(),
      ],
    );
  }
}