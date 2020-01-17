import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  int _totalScore=0;

  //you can also use static const
  final _questions=const [
    {
      'questionText':' What\'s your favorite color?',
      'answers':[
        {
          'text':'Red',
          'score':10,
        },
        {
          'text':'Black',
          'score':7,
        },
        {
          'text':'Green',
          'score':5,
        },
        {
          'text':'Blue',
          'score':3,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers':[
        {
          'text':'Rabbit',
          'score':10,
        },
        {
          'text':'Snake',
          'score':7,
        },
        {
          'text':'Dog',
          'score':5,
        },
        {
          'text':'Cat',
          'score':7,
        },
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers':[
        {
          'text':'Pawan',
          'score':10,
        },
        {
          'text':'Yash',
          'score':7,
        },
        {
          'text':'Raj',
          'score':5,
        },
        {
          'text':'Meet',
          'score':7,
        },
      ],
    },
    
  ];

  

  void _answerQ(int score){
  
    //_totalScore=_totalScore+score; below line is same as this 
    _totalScore+=score;

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
      body: (_questionIndex<_questions.length)?Quiz(
        questionIndex: _questionIndex,
        questions: _questions,
        onAnswerClick: _answerQ,
        ):Result(_totalScore),
     );
  }
}
