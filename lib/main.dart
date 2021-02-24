import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _que = const [
    {
      'queText': 'What\'s your favorite color ?',
      'ans': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'queText': 'What\'s your favorite animal ?',
      'ans': [
        {'text': 'Snake', 'score': 6},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 1},
      ],
    },
    {
      'queText': 'Who\'s your favorite instructor ?',
      'ans': [
        {'text': 'Mohit', 'score': 1},
        {'text': 'Mohit', 'score': 1},
        {'text': 'Mohit', 'score': 1},
        {'text': 'Mohit', 'score': 1},
      ],
    },
  ];
  var _queIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _queIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQue(int score) {
    _totalScore += score;
    setState(() {
      _queIndex = _queIndex + 1;
    });
    print(_queIndex);
    if (_queIndex < _que.length) {
      print('more que...!');
    } else {
      print('you did it ..!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: _queIndex < _que.length
            ? Quiz(
                answerQue: _answerQue,
                queIndex: _queIndex,
                que: _que,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
    // throw UnimplementedError();
  }
}
