import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String text;
  final void Function() onSelected;

  const Answer({super.key, required this.text, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue[800],
        ),
        onPressed: onSelected,
        child: Text(text),
      ),
    );
  }
}