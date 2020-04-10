import 'package:flutter/material.dart';
import 'package:quizx/model/WrongAnswerRecap.dart';

class WQuestionRecap extends StatelessWidget {
  final  WrongAnswerRecap wrongAnswerRecap;

  WQuestionRecap({@required this.wrongAnswerRecap});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Review Q/A
      padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xFFe4e7e4),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Text(
                  'Question',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(this.wrongAnswerRecap.getQuestion())
              ],
            ),
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: Color(0xFFcccccc),
          ),
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Text(
                  'Your answer',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(this.wrongAnswerRecap.getUserAnswer())
              ],
            ),
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: Color(0xFFcccccc),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text('Correct answer',
                    style:
                    TextStyle(fontWeight: FontWeight.bold)),
                Text(this.wrongAnswerRecap.getCorrectAnswer())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
