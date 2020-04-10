import 'package:flutter/material.dart';
import 'package:quizx/util/constants.dart';


class ContainerRadius extends StatelessWidget {

  final Widget child;

  ContainerRadius({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: kWhite
      ),
      child: this.child
    );
  }
}
