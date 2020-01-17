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
      body: (_questionIndex<_questions.length)?Center(
        child: Column(
          children: <Widget>[
            QuestionWidget(_questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>).map(
              (answer){
                return Answer(answer,_answerQ);
              }
            ).toList()

            //here we have used spread operator to add answer widget list with question
            //.map is used to map one element 
            //here .map takes one element and provide it to Answer widget
          ],
        ),
      ):
      Center(child: Text('You did it'),),
     );
  }
}
