import 'package:flutter/material.dart';
import 'package:quizx/util/constants.dart';

class QOptional extends StatelessWidget {
  final String content;
  final Function onTap;
  final bool isCorrect;

  QOptional({@required this.content, this.onTap, this.isCorrect});

  void setColor(bool isCorrect) {
    if (isCorrect) {}
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        decoration: this.isCorrect
            ? kCorrectAnswerDecoration
            : kIncorrectAnswerDecoration,
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
        child: Text(
          this.content,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kWhite,
          ),
        ),
        //con: Text(optionals, style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
