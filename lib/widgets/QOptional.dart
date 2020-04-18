import 'package:flutter/material.dart';
import 'package:quizx/util/constants.dart';

class QOptional extends StatelessWidget {
  final String content;
  final Function onTap;
  bool state;

  QOptional({@required this.content, this.onTap, this.state});

  void setColor(bool st) {
    this.state = st;
  }

  String getContent() {
    return this.content;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        decoration:
            this.state ? kCorrectAnswerDecoration : kDefaultAnswerDecoration,
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
        child: Text(
          this.content,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF757677),
          ),
        ),
        //con: Text(optionals, style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
