import 'package:flutter/material.dart';

class QOptional extends StatelessWidget {
  final Widget child;

  QOptional({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      //  color: Color(0xFFd7f8fa),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Color(0xFFCCCCCC), width: 1)
      ),
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
      child: this.child,
    );
  }
}
