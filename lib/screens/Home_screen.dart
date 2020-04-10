import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizx/controller/GenQuiz.dart';
import 'package:quizx/model/WrongAnswerRecap.dart';
import 'package:quizx/util/constants.dart';
import 'package:quizx/widgets/QOptional.dart';
import 'package:quizx/widgets/ContainerRadius.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  final GenQuiz _genQuiz = new GenQuiz();
}

class _HomeState extends State<Home> {
  String selectedOption;
  int correct = 0;
  int incorrect = 0;
  List<WrongAnswerRecap> missedQ = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<Widget> createRadioList() {
    List<Widget> widgets = [];
    for (String optionals
        in widget._genQuiz.getCategory().getCurrentOptional()) {
      widgets.add(
        RadioListTile(
          value: optionals,
          groupValue: selectedOption,
          title: Text(
            optionals,
            style: TextStyle(fontSize: 14),
          ),
          onChanged: (current) {
            setSelectedOptionals(current);
          },
          selected: true,
        ),
      );
    }
    return widgets;
  }

  List<Widget> createOptionaList() {
    List<Widget> widgets = [];
    for (String optionals
        in widget._genQuiz.getCategory().getCurrentOptional()) {
      widgets.add(
        QOptional(
          child: Text(
            optionals,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    return widgets;
  }

  setSelectedOptionals(String opti) {
    setState(() {
      selectedOption = opti;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.all(50),
        child: Column(
          children: <Widget>[
            Container(
              //  transform: Matrix4.translationValues(0.0, -50.0, 0.0),
              padding: EdgeInsets.only(top: 50),
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                //  gradient: LinearGradient(colors: [kMainColor, kMainWeakColor], stops: [0.0, 0.9])
                color: kMainColor,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    widget._genQuiz.getCategory().getName(),
                    style: TextStyle(color: kWhite, fontSize: 15),
                  ),
                  Column(
                    children: <Widget>[],
                  ),
                  Container(
                    width: double.infinity,
                    // height: 260,
                    //alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    margin: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.help_outline,
                          color: kWhite,
                          size: 40,
                        ),
                        SizedBox(height: 25),
                        Container(
                          alignment: Alignment.center,
                          height: 120,
                          child: Text(
                            '${widget._genQuiz.getCategory().getCurrentQuestion()}',
                            style: TextStyle(fontSize: 25, color: kWhite),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              ContainerRadius(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.help,
                                      size: 15,
                                      color: kMainColor,
                                    ),
                                    Text(
                                      ' Question: ${widget._genQuiz.getCategory().getCurrentQuestionNumber()}/${widget._genQuiz.getCategory().getNumberOfQuestions()}',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: kMainColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.error,
                                    size: 15,
                                    color: kWhite,
                                  ),
                                  Text(
                                    ' ${incorrect.toString()}',
                                    style: kFontSmallWhiteSize,
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 15,
                                    color: kWhite,
                                  ),
                                  Text(
                                    ' ${correct.toString()}',
                                    style: kFontSmallWhiteSize,
                                  ),
                                ],
                              )
                            ])
                      ],
                    ),
                  ),
                ],
              ),
            ),
//            Container(
//              padding: EdgeInsets.all(5),
//              child: Text('Select an answer below', style: kFontMiddleSize),
//            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: Column(
                  //TODO: Implement radio
                //  children: createRadioList(),
                   children: createOptionaList(),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (selectedOption != null) {
                    if (widget._genQuiz
                            .getCategory()
                            .getCurrentCorrectAnswer() ==
                        selectedOption) {
                      print('correct');
                      correct++;
                    } else {
                      print('false');
                      incorrect++;
                      missedQ.add(new WrongAnswerRecap(
                          widget._genQuiz.getCategory().getCurrentQuestion(),
                          selectedOption,
                          widget._genQuiz
                              .getCategory().getCurrentCorrectAnswer()));
                    }

                    widget._genQuiz.getCategory().nextQuestion();
                    setSelectedOptionals(null);
                  }

                  //  print(widget._genQuiz.getCategory().getCurrentOptional());
                });
              },
              child: Container(
                // color: kMainColor,
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 50,
                decoration: BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '${widget._genQuiz.getCategory().isTheEnd() ? 'Next' : 'Result'}',
                      style: TextStyle(fontSize: 15, color: kWhite),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: kWhite,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
