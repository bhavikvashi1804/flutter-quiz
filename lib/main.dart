import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _questionIndex=0;

  var _questions=[
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
    'Who\'s your favorite instructor?',
  ];

  void _answerQ(){
  
    setState(() {
      _questionIndex++;
    });
    
    print("Answer is choosen");
    print("Question No: $_questionIndex");
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            QuestionWidget(_questions[_questionIndex]),
            Answer(_answerQ),
            Answer(_answerQ),
            Answer(_answerQ),
          ],
        ),
      ),
     );
  }
}
