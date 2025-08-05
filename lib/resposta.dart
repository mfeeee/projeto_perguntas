import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String texto;

  const Resposta({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue[800],
        ),
        onPressed: () {},
        child: Text(texto),
      ),
    );
  }
}