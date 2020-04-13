import 'package:flutter/material.dart';
import 'package:quizx/controller/GenQuiz.dart';
import 'package:quizx/screens/Home_screen.dart';
import 'package:quizx/screens/Result_screen.dart';
import 'package:flutter/services.dart';
import 'package:quizx/util/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: kMainColor, //or set color with: Color(0xFF0000FF)
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.black,
          //    backgroundColor: Color(0xFF6d727b),
          //  scaffoldBackgroundColor: Color(0xFF13131f)
          // primarySwatch: Colors.blue,
          ),
      home: Home(),
    );
  }
}
