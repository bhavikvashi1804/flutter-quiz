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
  var questions=[
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
    'Who\'s your favorite instructor?',
  ];

  void answerQ(){
  
    questionIndex++;
  
    print("Answer is choosen");
    print("Question No: $questionIndex");
  }

  int questionIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              onPressed:answerQ,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed:answerQ,
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed:answerQ,
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
     );
  }
}
