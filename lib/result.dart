import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resutlText;
    if (totalScore <= 8) {
      resutlText = 'You are awesome and innocent!';
    } else if (totalScore <= 12) {
      resutlText = 'Pretty likeable!';
    } else if (totalScore <= 16) {
      resutlText = 'You are ... strange?';
    } else {
      resutlText = 'You are so bad!';
    }
    return resutlText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text(
              'Restart Quiz!',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
