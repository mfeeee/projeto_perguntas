import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'O que significa PHP?',
        'respostas': ['PHP: Hyperspeed Performance', 'PHP: Hyperformat Programming', 'PHP: Hypertext Preprocessor', 'PHP: Hyperlink Pages'],
      },
      {
        'texto': 'Qual afirmação NÃO é verdadeira sobre PHP:',
        'respostas': ['PHP é uma biblioteca de código Front End', 'PHP pode gerar conteúdo de página dinâmico', 'PHP é gratuito'],
      },
      {
        'texto': 'Qual é a extensão de arquivo correta para arquivos PHP?',
        'respostas': ['.php', '.ps', '.hpp'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Introdução PHP'),
        ),
        body: Column(
          children: [
            Questao(texto: perguntas[_perguntaSelecionada]['texto'].toString()),
            Resposta(texto: 'Resposta 1', onSelected: _responder),
            Resposta(texto: 'Resposta 2', onSelected: _responder),
            Resposta(texto: 'Resposta 3', onSelected: _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();

}