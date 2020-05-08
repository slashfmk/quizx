import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:quizx/model/Categories.dart';

class Questions {
  final int qId;
  final String q;
  final String correctAnswer;
  // final List<String> optional;

  Questions({this.qId, this.q, this.correctAnswer});

  String getQuestion() {
    return this.q;
  }

  factory Questions.fromJson(Map<String, dynamic> json) {
    return new Questions(
      q: json['question'] as String,
      qId: json['question_id'] as int,
    );
  }

  // return the correct answer
  String getCorrectAnswer() {
    return this.correctAnswer;
  }

//  List<String> getOptional() {
//    return this.optional;
//  }
}
