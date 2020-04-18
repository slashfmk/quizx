import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizx/model/WrongAnswerRecap.dart';
import 'package:quizx/util/constants.dart';
import 'package:quizx/widgets/WQuestionRecap.dart';

class Result_screen extends StatefulWidget {
  @override
  final List<WrongAnswerRecap> wrongAnswers = [
    new WrongAnswerRecap('Who founded paypal?', 'Bill Gates', 'Elon Musk'),
    new WrongAnswerRecap('What is the best selling phone brand in the usa?',
        'Samsung', 'Apple Iphone'),
    new WrongAnswerRecap('What is the worst mobile phone provider in the US',
        'At&t', 'T-Mobile'),
    new WrongAnswerRecap('What is the worst mobile phone provider in the US',
        'At&t', 'T-Mobile'),
    new WrongAnswerRecap('What is the worst mobile phone provider in the US',
        'At&t', 'T-Mobile'),
    new WrongAnswerRecap(
        'What is the worst mobile phone provider in the US', 'At&t', 'T-Mobile')
  ];

  _Result_screenState createState() => _Result_screenState();
// Result_screen({this.wrongAnswers});
}

class _Result_screenState extends State<Result_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          // color: kGreyLight,
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
//
              Container(
                // Main container for score
                // padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    //  border: Border.all(color: kGreyColor, width: .1),
                    color: kMainColor),

                // second part
                width: double.infinity,
                //  height: 250,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff272b34),
                      ),
                      padding: EdgeInsets.all(15),
//
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.infoCircle,
                            size: 15,
                            color: Color(0xffcccccc),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Subject | ',
                            style: TextStyle(
                              color: Color(0xffcccccc),
                            ),
                          ),
                          Text(
                            'Computer Science',
                            style: TextStyle(
                              color: Color(0xffcccccc),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: kWhite,
                      ),
//
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Your score is'),
                          Row(
                            children: <Widget>[
                              Text(
                                '97%',
                                style: TextStyle(
                                    fontSize: 55, fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Your performance: ',
                                        style: TextStyle(color: kBlueColor),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3, vertical: 2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            color: kRedColor),
                                        child: Text(
                                          'Average',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: kWhite,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'You need to work more',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: LinearProgressIndicator(
                                    value: 0.3,
                                    backgroundColor: kGreyLight,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        kRedColor),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '0',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        '100%',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: kYellowColor,
                      ),
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'You missed: 54',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            'You got 10',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            'Total questions: 65',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Container(
                //  padding: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
//
                    Container(
                      height: 300,
                      child: ListView.builder(
                          itemCount: widget.wrongAnswers.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                                title: new WQuestionRecap(
                                    wrongAnswerRecap:
                                        widget.wrongAnswers[index]));
                          }),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  //    decoration: BoxDecoration(color: Color(0xFFFF33aa)),
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          'Choose another subject',
                          style: TextStyle(fontSize: 15, color: kWhite),
                        ),
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