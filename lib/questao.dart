import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  //const Questao({super.key});

  final String texto;

  const Questao({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}