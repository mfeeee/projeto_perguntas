
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text('Linha 1'),
            Text('Linha 2'),
            Text('Linha 3'),
          ],
        ),
      ),
    );
  }
}