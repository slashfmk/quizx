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

class Cs {
  Category _general;
  String _categoryTitle;
  String _categoryDesc;
  int _categoryId;
  List<Questions> qx;
  QuestionService questionService;

  Cs(String categoryTitle, String categoryDesc, int id) {
    this._categoryTitle = categoryTitle;
    this._categoryDesc = categoryDesc;
    this._categoryId = id;
    this._general = new Category(this._categoryTitle, this._categoryDesc);

    qx = new List<Questions>();

    Question q1 = new Question(
        "What are the characteristics of software?", "All mentioned above", [
      "Software is developed or engineered; it is not manufactured in the classical sense.",
      "Software can be custom built or custom build.",
      "All of these"
    ]);
    this._general.addQuestion(q1);

    Question q2 = new Question(
        "Compilers, Editors software come under which type of software?",
        "System software",
        ["Application software", "Scientific software", "None of these"]);
    this._general.addQuestion(q2);

    Question q3 = new Question("Software is defined as ____ .", "All of these",
        ["Instructionse", "Data Structures", "Documents"]);

    this._general.addQuestion(q3);

    Question q4 = new Question(
        "You are working as a project manager. Your Company wants to develop a project. You are also involved in planning team. What will be your first step in project planning?",
        "Establish the objectives and scope of the product. ", [
      "Determine the project constraints.",
      "Select the team.",
      "None of these."
    ]);

    this._general.addQuestion(q4);

    Question q5 = new Question(
        "Which coding element is generally omitted at the end of line?",
        "Whitespace",
        ["Naming conventions", "Identifying.", "Operators"]);

    this._general.addQuestion(q5);

    Question q6 = new Question(
        "A Project can be characterized as _____ .", "None of these", [
      "Every project may not have a unique and distinct goal.",
      "Project is routine activity or day-to-day operations.",
      "Project does not comes with a start time and end time."
    ]);

    this._general.addQuestion(q6);

    Question q7 = new Question(
        "Choose the correct option in terms of Issues related to professional responsibility.",
        "Confidentiality", [
      "Intellectual property rights",
      "Managing Client Relationships",
    ]);

    this._general.addQuestion(q7);

    Question q8 = new Question(
        "Identify an ethical dilemma from the situations mentioned below:",
        "Your employer releases a safety-critical system without finishing the testing of the system.",
        [
          "Refusing to undertake a project.",
          "Agreement in principle with the policies of senior management.",
          "None of these"
        ]);

    this._general.addQuestion(q8);
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
