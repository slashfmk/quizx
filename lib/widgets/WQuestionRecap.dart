import 'package:flutter/material.dart';
import 'package:quizx/model/WrongAnswerRecap.dart';
import 'package:quizx/util/constants.dart';

class WQuestionRecap extends StatelessWidget {
  final WrongAnswerRecap wrongAnswerRecap;

  WQuestionRecap({@required this.wrongAnswerRecap});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Review Q/A
      padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: kWhite,
        border: Border.all(color: kDarkColor, width: .2),
        borderRadius: BorderRadius.circular(0),
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    //  color: kBlueColor,
                    fontSize: 13,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    this.wrongAnswerRecap.getQuestion(),
                    style: TextStyle(

//                    color: kBlueColor,
                        ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 10,
            thickness: .2,
            color: kGreyColor,
          ),
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Text(
                  'Your answer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kRedColor,
                    fontSize: 13,
                  ),
                ),
                Text(this.wrongAnswerRecap.getUserAnswer())
              ],
            ),
          ),
          Divider(
            height: 10,
            thickness: .2,
            color: kGreyColor,
          ),
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Text(
                  'Correct answer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kGreenColor,
                    fontSize: 13,
                  ),
                ),
                Text(this.wrongAnswerRecap.getCorrectAnswer())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
