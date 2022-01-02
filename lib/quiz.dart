import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  // But if you have a error use VoidCallback
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map( 
          (answer) {
            return Answer( 
              // Pass in parameter score in our function
              () => answerQuestion(answer['score']),answer['text']
            );  
          }).toList()
      ],
    );
  }
}