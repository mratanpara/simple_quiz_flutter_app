import 'package:flutter/material.dart';
import './que.dart';
import './ans.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> que;
  final Function answerQue;
  final int queIndex;
  Quiz({
    @required this.que,
    @required this.answerQue,
    @required this.queIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Que(
          que[queIndex]['queText'],
        ),
        ...(que[queIndex]['ans'] as List<Map<String, Object>>).map((answer) {
          return Ans(() => answerQue(answer['score']), answer['text']);
        }).toList()
        // RaisedButton(
        //   child: Text('Shubham'),
        //   onPressed: () => print('Shubham'),
        // ),
        // RaisedButton(
        //   child: Text('Darshit'),
        //   onPressed: () {
        //     //....
        //     print('Darshit');
        //   },
        // ),
      ],
    );
  }
}
