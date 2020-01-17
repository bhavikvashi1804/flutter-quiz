import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final answerText;
  Answer(this.answerText,this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(answerText),
        color: Colors.blue,
        onPressed: selectHandler ,
      ),
    );
  }
}