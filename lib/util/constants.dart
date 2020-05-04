import 'package:flutter/material.dart';
import 'package:quizx/widgets/QOptional.dart';

// Colors
//final Color kMainColor = Color(0xFF01b7c4);
// final Color kMainColor = Color(0xFF0772bd);
final Color kMainColor = Color(0xFF1d1f2b);
final Color kBlueColor = Color(0xFF49acd5);
final Color kRedColor = Color(0xFFEC5252);
final Color kYellowColor = Color(0xFFeaad44);
final Color kGreenColor = Color(0xFF46bc62);
final Color kWhite = Color(0xFFFFFFFF);
final Color kDarkColor = Color(0xFF1d1f2b);
final Color kGreyLight = Color(0xFFe9e4e8);
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

final kFontVeryLargeSize =
    TextStyle(fontSize: 55, fontWeight: FontWeight.bold, color: kDarkColor);
// fontSizing

// Box decoration for QOptional
BoxDecoration kCorrectAnswerDecoration = BoxDecoration(
  color: kMainColor,
  borderRadius: BorderRadius.circular(30),
  border: Border.all(color: Color(0xFFCCCCCC), width: 1),
);

BoxDecoration kIncorrectAnswerDecoration = BoxDecoration(
  color: kRedColor,
  borderRadius: BorderRadius.circular(30),
  border: Border.all(color: kRedColor, width: 1),
);

BoxDecoration kDefaultAnswerDecoration = BoxDecoration(
  color: Color(0xFFeaebee),
  borderRadius: BorderRadius.circular(25),
  border: Border.all(color: Color(0xFFeaebee), width: 1),
);
