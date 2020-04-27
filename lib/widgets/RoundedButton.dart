import 'package:flutter/material.dart';
import 'package:quizx/util/constants.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const RoundedButton({@required this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              this.icon,
              size: 14,
              color: kWhite,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              this.text,
              style: TextStyle(fontSize: 15, color: kWhite),
            ),
          ],
        ),
      ),
    );
  }
}
