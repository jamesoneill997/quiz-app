import 'package:flutter/material.dart';

//shorthand
void main() => runApp(MyApp());

//inheritance, only can extend one class at a time
class MyApp extends StatelessWidget {
  //makes code clear, overrides build method
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Sample Quiz'),
        ),
        body: Text("This is default"),
      ),
    );
  }
}
