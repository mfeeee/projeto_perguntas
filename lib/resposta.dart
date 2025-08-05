import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String texto;
  final void Function() onSelected;

  const Resposta({super.key, required this.texto, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue[800],
        ),
        onPressed: onSelected,
        child: Text(texto),
      ),
    );
  }
}