import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:quizx/model/Category.dart';
import 'package:quizx/model/Question.dart';
import 'dart:convert';
import 'dart:async';

class Quiz {
  Category _general;
  String _categoryTitle;
  String _categoryDesc;
  int _categoryId;

  Quiz(String categoryTitle, String categoryDesc, int id) {
    this._categoryTitle = categoryTitle;
    this._categoryDesc = categoryDesc;
    this._categoryId = id;

    this._general = new Category(this._categoryTitle, this._categoryDesc);

    List<String> opt1 = ["Dennis Ritchie", "Charles Babbage", "Ken Thompson"];

    Question q1 = new Question(
        "Who was the father of computer??", "Charlie Babbage", opt1);

    this._general.addQuestion(q1);
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
