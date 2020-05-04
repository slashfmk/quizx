import 'package:flutter/material.dart';
import 'package:quizx/controller/GenQuiz.dart';
import 'package:quizx/screens/TestScreen.dart';
import 'package:quizx/screens/ResultScreen.dart';
import 'package:flutter/services.dart';
import 'package:quizx/util/constants.dart';
import 'package:quizx/screens/CategoryChoiceScreen.dart';
import 'package:quizx/screens/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));

    return MaterialApp(
      title: 'Quizx',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => CategoryChoiceScreen(),
        '/test': (context) => TestScreen(),
        '/result': (context) => ResultScreen()
      },
      theme: ThemeData(
          // primarySwatch: Colors.black,
          //    backgroundColor: Color(0xFF6d727b),
          //  scaffoldBackgroundColor: Color(0xFF13131f)
          // primarySwatch: Colors.blue,
          ),
//      home: Home(),
    );
  }
}
