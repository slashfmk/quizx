import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:quizx/boilerplate/QuestionList.dart';
import 'package:quizx/boilerplate/Questions.dart';
import 'package:quizx/model/Category.dart';
import 'package:quizx/model/Question.dart';
import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:quizx/model/Categories.dart';
import 'package:quizx/networking/CategoryService.dart';
import 'package:quizx/networking/QuestionService.dart';

class Quiz {
  Category _general;
  String _categoryTitle;
  String _categoryDesc;
  int _categoryId;
  List<Questions> qx;
  QuestionService questionService;

  Quiz(String categoryTitle, String categoryDesc, int id) {
    this._categoryTitle = categoryTitle;
    this._categoryDesc = categoryDesc;
    this._categoryId = id;
    this._general = new Category(this._categoryTitle, this._categoryDesc);

    qx = new List<Questions>();

    Question q1 = new Question(
        "Who was the father of computer??",
        "Charlie Babbage",
        ["Dennis Ritchie", "Charles Babbage", "Ken Thompson"]);
    this._general.addQuestion(q1);

    // for (String c in questionService.getData()) {}

    // print(allQuestions);
    questionService = new QuestionService(this._categoryId);

    CategoryService cs = new CategoryService();

    getQuestions();

    print(this.qx);

    for (final x in this.qx) {
      print(x.q);
    }

//    Question q2 = new Question(this.questionService(this._categoryId) as String,
//        'xxxxx', this.answerService(_categoryId) as List);
  }

  Future<List<Questions>> getQuestions() async {
    List<Questions> rs = await this.questionService.getData();
    for (final itm in rs) {
      // print(itm.q);
      this.qx.add(itm);
    }
    return rs;
  }

  Category getCategory() {
    return this._general;
  }
}
