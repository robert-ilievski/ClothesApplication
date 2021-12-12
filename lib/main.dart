import 'package:flutter/material.dart';

import 'clothes_answer.dart';
import 'clothes_question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void iWasTapped() {
    setState(() {
      questionIndex += 1;
    });
  }

  var questions = [
    {
      'question': "Select tops",
      'answer': ['Shirt', 'T-Shirt', 'Sweatshirt', 'Sleeveless Shirt', 'None']
    },
    {
      'question': "Select jacket",
      'answer': ['Leather Jacket', 'Coat', 'Winter Jacket', 'None']
    },
    {
      'question': "Select pants",
      'answer': ['Jeans', 'Shorts', 'None']
    },
    {
      'question': "Select shoes",
      'answer': ['Nike Air Force 1', 'Oxfords', 'Sandals', 'None']
    }
  ];
  var questionIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothes App - 181523',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
          appBar: AppBar(title: const Text("Clothes App - 181523")),
          body: Column(
            children: [
              ClothesQuestion(questions[questionIndex]['question'].toString()),
              ...(questions[questionIndex]['answer'] as List<String>)
                  .map((answer) {
                return ClothesAnswer(iWasTapped, answer);
              })
            ],
          )),
    );
  }
}
