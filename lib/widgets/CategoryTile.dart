import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizx/util/constants.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final String description;
  final int numberOfQuestions;
  final Function onTap;

  CategoryTile(
      {@required this.title,
      this.description,
      @required this.numberOfQuestions,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
        width: double.infinity,
        //  padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7), color: kGreyLight
            //  border: Border.all(color: kDarkColor, width: .2),
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
//            decoration: BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 5,
//                      child: Divider(
//                        thickness: 5,
//                        color: kDarkColor,
//                        height: 20,
//                      ),
                    ),
                    Container(
                      // width: MediaQuery.of(context).size.width / 1.2,
                      child: Text(
                        this.description,
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
                color: kBlueColor,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    this.numberOfQuestions.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kWhite,
                        fontSize: 20),
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
      ),
    );
  }
}
