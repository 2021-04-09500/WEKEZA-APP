import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('answer chosen');
  }

  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite color',
      'what\'s your favourite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(children: [
          Text(questions.elementAt(0)),
          ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('answer 2 chosen')),
          ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('answer 3 was chosen');
              }),
        ]),
      ),
    );
  }
}
