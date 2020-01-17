import 'package:flutter/material.dart';

import './quiz.dart';

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
  //you can also use static const
  final _questions=const [
    {
      'questionText':' What\'s your favorite color?',
      'answers':['Red','Black','Green','Blue'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers':['Rabbit','Snake','Dog','Cat'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers':['Pawan','Yash','Raj','Meet'],
    },
    
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
      body: (_questionIndex<_questions.length)?Quiz(
        questionIndex: _questionIndex,
        questions: _questions,
        onAnswerClick: _answerQ,
        ):Center(child: Text('You did it'),),
     );
  }
}
