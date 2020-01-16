import 'package:flutter/material.dart';

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
            Text(_questions[_questionIndex]),
            RaisedButton(
              onPressed:_answerQ,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed:_answerQ,
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed:_answerQ,
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
     );
  }
}
