import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

//shorthand
void main() => runApp(MyApp());

//inheritance, only can extend one class at a time
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//_ makes class private
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  //makes code clear, overrides build method
  @override
  Widget build(BuildContext ctx) {
    var questions = [
      {
        'questionText': 'What is your favourite colour',
        'answers': ['red', 'green', 'white', "black"]
      },
      {
        'questionText': 'What is the best language?',
        'answers': ['English', 'Irish', 'German', 'Dutch']
      },
      {
        'questionText': 'Where do you live?',
        'answers': ['France', 'Poland', 'Australia', 'Ukraine']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text('Sample Quiz'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
