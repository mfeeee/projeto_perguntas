import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  
  var _selectedQuestion = 0;
  var _totalScore = 0;

  final List<Map<String, Object>> _questions = const [
      {
        'text': 'O que significa PHP?',
        'answers': [
          {'text': 'PHP: Hyperspeed Performance', 'score': 0}, 
          {'text': 'PHP: Hyperformat Programming', 'score': 0}, 
          {'text': 'PHP: Hypertext Preprocessor', 'score': 100}, 
          {'text': 'PHP: Hyperlink Pages', 'score': 0},
        ],
      },
      {
        'text': 'Qual afirmação NÃO é verdadeira sobre PHP:',
        'answers': [
          {'text': 'PHP é uma biblioteca de código Front End', 'score': 100}, 
          {'text': 'PHP pode gerar conteúdo de página dinâmico', 'score': 0}, 
          {'text': 'PHP é gratuito', 'score': 0}, 
        ],
      },
      {
        'text': 'Qual é a extensão de arquivo correta para arquivos PHP?',
        'answers': [
          {'text': '.php', 'score': 100},  
          {'text': '.ps', 'score': 0},  
          {'text': '.hpp', 'score': 0}, 
        ],
      },
    ];

  void _answer(int score) {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
        _totalScore += score;
      });
    }

    print(_totalScore);
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Introdução PHP'),
        ),
        body: hasSelectedQuestion ? Quiz(questions: _questions, selectedQuestion: _selectedQuestion, onAnswered: _answer,
        ) : Result(score: _totalScore),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  State<QuestionApp> createState() => _QuestionAppState();

}