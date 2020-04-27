import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizx/model/WrongAnswerRecap.dart';
import 'package:quizx/util/constants.dart';
import 'package:quizx/widgets/WQuestionRecap.dart';
import 'package:quizx/screens/Home_screen.dart';
import 'package:quizx/util/Calculation.dart';
import 'package:quizx/widgets/RoundedButton.dart';

class Result_screen extends StatefulWidget {
  @override
  final List<WrongAnswerRecap> wrongAnswers;
  final int totalQ;
  final String category;

  Result_screen({
    @required this.category,
    @required this.wrongAnswers,
    @required this.totalQ,
  });

  _Result_screenState createState() => _Result_screenState();
// Result_screen({this.wrongAnswers});
}

class _Result_screenState extends State<Result_screen> {
  // progressBar Color
  Color _colorPresentationPerformance() {
    Color pBarColor;

    String performResult = Calculation.getPerformance(Calculation.percentage(
        widget.totalQ - widget.wrongAnswers.length, widget.totalQ));

    if (performResult == 'Average') {
      pBarColor = kYellowColor;
    } else if (performResult == 'Good') {
      pBarColor = Colors.orange;
    } else if (performResult == 'Excellent') {
      pBarColor = kGreenColor;
    } else {
      pBarColor = kRedColor;
    }

    return pBarColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          // color: kGreyLight,
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
//
              Container(
                // Main container for score
                // padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  // border: Border.all(color: kGreyColor, width: .1),
                  boxShadow: [
                    BoxShadow(
                        color: kGreyLight,
                        blurRadius: 0.5,
                        spreadRadius: 2.0,
                        offset: Offset(
                          0.0,
                          0.0,
                        ))
                  ],
                  color: kMainColor,
                ),

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
                            '${widget.category}',
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
                                '${Calculation.percentage(widget.totalQ - widget.wrongAnswers.length, widget.totalQ).toInt().toString()}%',
                                style: TextStyle(
                                    fontSize: 55, fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Performance: ',
                                        style: TextStyle(
                                            color: kBlueColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3, vertical: 2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            color:
                                                _colorPresentationPerformance()),
                                        child: Text(
                                          Calculation.getPerformance(
                                              Calculation.percentage(
                                                  widget.totalQ -
                                                      widget
                                                          .wrongAnswers.length,
                                                  widget.totalQ)),
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
                                    value: Calculation.percentage(
                                            widget.totalQ -
                                                widget.wrongAnswers.length,
                                            widget.totalQ) /
                                        100,
                                    backgroundColor: kGreyLight,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        _colorPresentationPerformance()),
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
                            'You missed: ${widget.wrongAnswers.length.toString()}',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            'You got: ${(widget.totalQ - widget.wrongAnswers.length).toString()}',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            'Total questions: ${widget.totalQ}',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // list view Block
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: kGreyLight,
                  border: Border.all(color: kDarkColor, width: .2),
                ),
                //  padding: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff272b34),
                      ),
                      //  margin: EdgeInsets.symmetric(horizontal: 15),
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //  crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.clipboardList,
                            color: Color(0xFFCCCCCC),
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Questions you have missed',
                            style: TextStyle(
                              color: Color(0xFFCCCCCC),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 350,
                      child: this.widget.wrongAnswers.length > 0
                          ? ListView.builder(
                              itemCount: widget.wrongAnswers.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                    title: new WQuestionRecap(
                                        wrongAnswerRecap:
                                            widget.wrongAnswers[index]));
                              },
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.infoCircle,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    'Nothing to show, because You got it all correct!'),
                              ],
                            ),
                    )
                  ],
                ),
              ),
              Container(
                //    decoration: BoxDecoration(color: Color(0xFFFF33aa)),
                padding: EdgeInsets.only(bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RoundedButton(
                      text: "Main menu",
                      icon: FontAwesomeIcons.checkSquare,
                    ),
                    RoundedButton(
                      text: "Try again",
                      icon: FontAwesomeIcons.redo,
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
