import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {
  String questionContent;
  ClothesQuestion(this.questionContent);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child:Text(questionContent,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: Colors.blue),
      ),
    );
  }
}