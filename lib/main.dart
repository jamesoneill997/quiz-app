import 'package:flutter/material.dart';

import './question.dart';

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
      'What is your favourite colour',
      'What is the best language?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Sample Quiz'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
