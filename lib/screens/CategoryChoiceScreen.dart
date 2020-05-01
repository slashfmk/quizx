import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizx/util/constants.dart';
import 'package:quizx/widgets/ContainerRadius.dart';
import 'package:quizx/widgets/CategoryTile.dart';

class CategoryChoiceScreen extends StatefulWidget {
  @override
  _CategoryChoiceScreenState createState() => _CategoryChoiceScreenState();
}

class _CategoryChoiceScreenState extends State<CategoryChoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              // Holds the title and all the heading
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                color: kMainColor,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Quizx',
                      style: kFontVeryLargeSize,
                    ),
                    Icon(
                      FontAwesomeIcons.questionCircle,
                      color: kWhite,
                      size: 50,
                    ),
                    ContainerRadius(
                      background: kWhite,
                      child: Text(
                        'Build your brain muscles',
                        style: TextStyle(fontSize: 12, color: kMainColor),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Pick a category to test your brain',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              // Holds the list of Quizzes
              Container(
                child: Column(
                  children: <Widget>[
                    CategoryTile(
                      title: 'Computer science',
                      description:
                          'A computer science based quiz with alot to learn, so good',
                      numberOfQuestions: 25,
                    ),
                    CategoryTile(
                      title: 'Psycology',
                      description:
                          'A computer science based quiz with alot to learn, so good',
                      numberOfQuestions: 25,
                    ),
                    CategoryTile(
                      title: 'Mecanics',
                      description:
                          'A computer science based quiz with alot to learn, so good',
                      numberOfQuestions: 25,
                    ),
                    CategoryTile(
                      title: 'Business',
                      description:
                          'A computer science based quiz with alot to learn, so good',
                      numberOfQuestions: 25,
                    ),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
