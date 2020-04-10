import 'package:flutter/material.dart';
import 'package:quizx/model/WrongAnswerRecap.dart';
import 'package:quizx/util/constants.dart';
import 'package:quizx/widgets/WQuestionRecap.dart';

class Result_screen extends StatefulWidget {
  @override
  final List<WrongAnswerRecap> wrongAnswers = [
    new WrongAnswerRecap('question', 'userWrongAnswer', 'correctAnswer'),
    new WrongAnswerRecap('question', 'userWrongAnswer', 'correctAnswer')
  ];
  _Result_screenState createState() => _Result_screenState();
 // Result_screen({this.wrongAnswers});
}

class _Result_screenState extends State<Result_screen> {

 // WrongAnswerRecap wrongAnswerRecap = ;


//  WQuestionRecap(wrongAnswerRecap: wrongAnswerRecap),
//  WQuestionRecap(wrongAnswerRecap: wrongAnswerRecap)

 // final List<WrongAnswerRecap> recap = new List();




  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          //  color: kMainWeakColor,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: Text(
                  'Score',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                // second part
                width: double.infinity,
                height: 200,
                child: Column(
                  children: <Widget>[
                    Text('You got'),
                    Text(
                      '${65} %',
                      style: TextStyle(fontSize: 90, fontWeight: kBoldLight),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('Correct: ${20}'),
                    Text('Missed: ${2}'),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(
                      'What you got wrong',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 17),
                    ),
                   Container(
                     height: 300,
                     child: ListView.builder(
                       itemCount: widget.wrongAnswers.length,
                       itemBuilder: (context, index){
                         return ListTile(
                           title: new WQuestionRecap(wrongAnswerRecap: widget.wrongAnswers[index])
                         );
                       }
                     ),
                   )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                     crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          'Continue test',
                          style: TextStyle(fontSize: 15, color: kWhite),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        child: Text('Choose another subject', style: TextStyle(fontSize: 15, color: kWhite),),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

