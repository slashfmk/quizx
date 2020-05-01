import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:quizx/model/Category.dart';
import 'package:quizx/model/Question.dart';
import 'dart:convert';
import 'dart:async';

class GenQuiz {
  Category _general;

  GenQuiz() {
    this._general =
        new Category("General Questions", "This is a bag of general questions");

    List<String> opt1 = ["Dennis Ritchie", "Charles Babbage", "Ken Thompson"];

    Question q1 = new Question(
        "Who was the father of computer??", "Charlie Babbage", opt1);
    // Questions
    List<String> opt2 = ["Steve Jobs", "Jeff Bezos"];
    Question q2 = new Question("Who founded microsoft??", "Bill gates", opt2);

    // Questions
    List<String> opt3 = ["1600", "2010", "3678", "6666"];
    Question q3 =
        new Question("In what year was microsoft founded??", "1967", opt3);

    // Questions
    Question q4 =
        new Question("Who founded paypal??", "Elan Musk", ["Snug", "plexxus"]);

//    this._general.addQuestion(q0);
    this._general.addQuestion(q1);
    this._general.addQuestion(q2);
    this._general.addQuestion(q3);
    this._general.addQuestion(q4);
  }

  Category getCategory() {
    return this._general;
  }
}
//
//class GenQuiz {
//  Category _general;
//  Map content;
//  String _url;
//
//  GenQuiz() {
//    this._url = 'computer_science.json';
//    this._general =
//        new Category("General Culture", "This is a bag of general questions");
//
//    populateData();
//    print(_general.getName());
//  }
//
//  Future populateData() async {
//    String loaded = await loadJson(this._url);
//    Map decoded = jsonDecode(loaded);
//    //  this.content = decoded;
//    print(decoded['title']);
//    //  print(decoded['content']);
//
//    this._general.addQuestion(
//          new Question(
//            decoded['content']['question'],
//            decoded['content']['correct_amswer'],
//            decoded['optionals'],
//          ),
//        );
//  }
//
//  Future<String> loadJson(String url) async {
//    try {
//      var loading = await rootBundle.loadString('assets/quizzes/${url}');
//
//      if (loading != null) {
//        return loading;
//      }
//      return null;
//    } catch (e) {
//      print('Unable to load json !!! ${e.toString()}');
//    }
//  }
//
//  Category getCategory() {
//    return this._general;
//  }
//}
