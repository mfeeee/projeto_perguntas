import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
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

  void _responder() {
    if (hasSelectedQuestion) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get hasSelectedQuestion {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    

    List<String> respostas = hasSelectedQuestion ? _perguntas[_perguntaSelecionada].cast()['respostas'] : [];

    //for(String textoResp in respostas) {
    //  widgets.add(Resposta(texto: textoResp, onSelected: _responder));
    //}

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Introdução PHP'),
        ),
        body: hasSelectedQuestion ? Column(
          children: [
            Questao(texto: _perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(texto: t, onSelected: _responder)).toList(),
          ],
        ) : null,
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();

}