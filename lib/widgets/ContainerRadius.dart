import 'package:flutter/material.dart';
import 'package:quizx/util/constants.dart';

class ContainerRadius extends StatelessWidget {
  final Widget child;
  final Color background;

  ContainerRadius({@required this.child, this.background});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: this.background,
        ),
        child: this.child);
  }
}
