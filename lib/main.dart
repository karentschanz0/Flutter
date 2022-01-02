
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// Private class
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    
    print(_questionIndex);
  }
 
  @override
  Widget build(BuildContext context) {

    var questions = [
      {
        'questionText': 'What is your favorite color ?',
        'answers': ['Blue', 'Yellow', 'Green', 'Red'],
      },
      {
        'questionText': 'What is your favorite animal ?',
        'answers': ['Dog', 'Cat', 'Rabbit', 'Turtle'],
      },
      {
        'questionText': 'What is your favorite food ?',
        'answers': ['Italian', 'Korean', 'Japanese'],
      },
    ];

    return MaterialApp(home: Scaffold(
        appBar: AppBar(title: Text('Quizz App'),),
        body: Column(children: [
          Question(questions[_questionIndex]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],),
    ),);
  }
}