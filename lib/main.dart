import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//inheritance, only can extend one class at a time
class MyApp extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Text('Hello, World!'),
    );
  }
}
