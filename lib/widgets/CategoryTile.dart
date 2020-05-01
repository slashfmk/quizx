import 'package:flutter/material.dart';
import 'package:quizx/util/constants.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final String description;
  final int numberOfQuestions;

  CategoryTile({
    @required this.title,
    this.description,
    @required this.numberOfQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
      width: double.infinity,
      //  padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kGreyLight,
        //  border: Border.all(color: kDarkColor, width: .2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 5,
                  child: Divider(
                    thickness: 5,
                    color: kDarkColor,
                    height: 20,
                  ),
                ),
                Text(
                  this.description,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kRedColor,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  this.numberOfQuestions.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kWhite, fontSize: 20),
                ),
                Text(
                  'Questions',
                  style: TextStyle(
                    fontSize: 10,
                    color: kWhite,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
