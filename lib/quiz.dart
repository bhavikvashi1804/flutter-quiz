import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {

  final List<Map <String,Object> > questions;
  final Function onAnswerClick;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.onAnswerClick,
    @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            QuestionWidget(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<String>).map(
              (answer){
                return Answer(answer,onAnswerClick);
              }
            ).toList()

            //here we have used spread operator to add answer widget list with question
            //.map is used to map one element 
            //here .map takes one element and provide it to Answer widget
          ],
        ),
      );
  }
}