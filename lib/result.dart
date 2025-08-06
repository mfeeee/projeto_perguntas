import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() onRestart;

  const Result({super.key, required this.score, required this.onRestart});

  String get resultText {
    switch (score) {
      case 100:
         return "Boa! Você acertou uma. O código compilou e rodou, que é o mais importante. Agora é só debugar o resto e tentar de novo!"; 
      case 200:
        return "Quase lá! Faltou só um ponto e vírgula para o código ficar perfeito. Parabéns pelos 2 acertos!";
      ;
      case 300:
        return "Uau, código perfeito! 3 de 3. Parece que você já está pronto para ir além do básico e encarar o próximo desafio.";
      case 0:
        return "Não acertou desta vez, mas não desanime! Todo bom desenvolvedor começa com alguns erros de lógica. Tente de novo, tenho certeza que agora vai!";
      default: 
        return "Continue praticando!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Text(
              resultText, 
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue[800],
          ),
          onPressed: onRestart,
          child: Text(
            "Reiniciar Quiz", 
            style: TextStyle(fontSize: 20)
          ),
        ),
      ],
    );
  }
}