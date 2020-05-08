import 'package:quizx/model/Question.dart';

class Categories {
  final List<Question> questions;
  // final List<Question> questions;
  final String categoryName;
  final String categoryDesc;
  final int categoryId;
  final String numberOfQuestions;
  int questionNumber = 0;

  Categories(
      {this.categoryId,
      this.categoryName,
      this.categoryDesc,
      this.numberOfQuestions,
      List<Question> this.questions});

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
        categoryId: json['category_id'] as int,
        categoryName: json['title'] as String,
        categoryDesc: json['description'] as String,
        numberOfQuestions: json['q_count'] as String
//      questions: parseQuestions(json['theQuestion']),
        );
  }
}
