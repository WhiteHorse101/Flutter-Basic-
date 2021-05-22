import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function getmethod;
  final String answertext;

  Answer(this.getmethod, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[200],
        child: Text(answertext),
        onPressed: getmethod,
      ),
    );
  }
}
