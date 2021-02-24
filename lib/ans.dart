import 'package:flutter/material.dart';

class Ans extends StatelessWidget {
  final Function selectHandler;
  final String ansText;
  Ans(this.selectHandler, this.ansText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[400],
        textColor: Colors.white,
        child: Text(ansText),
        onPressed: selectHandler,
      ),
    );
  }
}
