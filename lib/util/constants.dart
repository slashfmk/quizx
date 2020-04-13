import 'package:flutter/material.dart';
import 'package:quizx/widgets/QOptional.dart';

// Colors
//final Color kMainColor = Color(0xFF01b7c4);
//final Color kMainColor = Color(0xFF0772bd);
final Color kMainColor = Color(0xFF4F5663);
final Color kMainWeakColor = Color(0xFF3ee3ef);
final Color kRedColor = Color(0xFFEC5252);
final Color kWhite = Color(0xFFFFFFFF);
final Color kDarkColor = Color(0xFF1d1f2b);
final Color kGreyColor = Color(0xFF444444);

// bolding
const kBoldLight = FontWeight.w300;

// Styles
final kFontMiddleSize =
    TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kMainColor);

final kFontSmallSize =
    TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: kMainColor);

final kFontSmallWhiteSize =
    TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: kWhite);

// Box decoration for QOptional
BoxDecoration kCorrectAnswerDecoration = BoxDecoration(
    color: kMainColor,
    borderRadius: BorderRadius.circular(30),
    border: Border.all(color: Color(0xFFCCCCCC), width: 1));

BoxDecoration kIncorrectAnswerDecoration = BoxDecoration(
    color: kRedColor,
    borderRadius: BorderRadius.circular(30),
    border: Border.all(color: kRedColor, width: 1));
