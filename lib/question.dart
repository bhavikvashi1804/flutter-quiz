import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {

  final String questionText;
  QuestionWidget(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //double.infinity means max width
      margin: EdgeInsets.all(20.0),
      child: Text(
        questionText,
        style:TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}