import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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

  final _questions = const [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    if (_questionIndex < _questions.length) {
      print(0);
    }
    print(1);
  }

  //makes code clear, overrides build method
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text('Sample Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
