import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  String answerText;
  Function() tapped;

  ClothesAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        child: Text(
          answerText,
          style: TextStyle(color: Colors.red),
        ),
        onPressed: tapped,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
        ),
      ),
    );
  }
}
