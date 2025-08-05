import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  
  var _selectedQuestion = 0;

  final List<Map<String, Object>> _questions = const [
      {
        'text': 'O que significa PHP?',
        'answers': ['PHP: Hyperspeed Performance', 'PHP: Hyperformat Programming', 'PHP: Hypertext Preprocessor', 'PHP: Hyperlink Pages'],
      },
      {
        'text': 'Qual afirmação NÃO é verdadeira sobre PHP:',
        'answers': ['PHP é uma biblioteca de código Front End', 'PHP pode gerar conteúdo de página dinâmico', 'PHP é gratuito'],
      },
      {
        'text': 'Qual é a extensão de arquivo correta para arquivos PHP?',
        'answers': ['.php', '.ps', '.hpp'],
      },
    ];

  void _answer() {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    

    List<String> answers = hasSelectedQuestion ? _questions[_selectedQuestion].cast()['answers'] : [];

    //for(String textResp in answers) {
    //  widgets.add(Resposta(text: textResp, onSelected: _answer));
    //}

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Introdução PHP'),
        ),
        body: hasSelectedQuestion ? Column(
          children: [
            Question(text: _questions[_selectedQuestion]['text'].toString()),
            ...answers.map((t) => Answer(text: t, onSelected: _answer)).toList(),
          ],
        ) : Center(
          child: Text(
            'Parabéns!', 
            style: TextStyle(fontSize: 28),
            ),
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  State<QuestionApp> createState() => _QuestionAppState();

}