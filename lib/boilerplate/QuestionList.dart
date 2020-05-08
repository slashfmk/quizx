import 'package:quizx/boilerplate/Questions.dart';

class QuestionList {
  final List<Questions> questions;

  QuestionList({this.questions});

  factory QuestionList.fromJson(List<dynamic> parsedJson) {
    List<Questions> questions = new List<Questions>();
    questions = parsedJson.map((item) => Questions.fromJson(item)).toList();

    return new QuestionList(questions: questions);
  }
}
