import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function(int) onAnswered;

  const Quiz({super.key, required this.questions, required this.selectedQuestion, required this.onAnswered});

  bool get hasSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {

    List<Map<String, Object>> answers = hasSelectedQuestion ? questions[selectedQuestion].cast()['answers'] : [];

    return Column(
      children: [
        Question(text: questions[selectedQuestion]['text'].toString()),
        ...answers
          .map((ans) {
            return Answer(
              text: ans['text'] as String, 
              onSelected: () => onAnswered(int.parse(ans['score']
                .toString())));
          }),
      ],
    );
  }
}