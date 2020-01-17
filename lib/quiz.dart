import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {

  final List<Map <String,Object> >_questions;
  final Function _onPress;
  final int _questionIndex;

  Quiz(this._questions,this._onPress,this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            QuestionWidget(_questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>).map(
              (answer){
                return Answer(answer,_onPress);
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