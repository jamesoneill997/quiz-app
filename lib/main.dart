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
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What is your favourite colour',
      'answers': [
        {'text': 'red', 'score': 1},
        {'text': 'green', 'score': 2},
        {'text': 'white', 'score': 3},
        {'text': "black", 'score': 4}
      ]
    },
    {
      'questionText': 'What is the best language?',
      'answers': [
        {'text': 'English', 'score': 1},
        {'text': 'Irish', 'score': 2},
        {'text': 'German', 'score': 3},
        {'text': 'Dutch', 'score': 4}
      ]
    },
    {
      'questionText': 'Where do you live?',
      'answers': [
        {'text': 'France', 'score': 1},
        {'text': 'Poland', 'score': 2},
        {'text': 'Australia', 'score': 3},
        {'text': 'Ukraine', 'score': 4},
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });

    if (_questionIndex < _questions.length) {
      print(0);
    }
    print(1);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
