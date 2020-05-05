import 'package:quizx/model/Question.dart';

class Categories {
  final List<Question> questions;
  // final List<Question> questions;
  final String categoryName;
  final String categoryDesc;
  int questionNumber = 0;

  Categories({this.categoryName, this.categoryDesc, this.questions});
//  {
//    this._categoryName = name;
//    this._categoryDesc = desc;
//    this._questions = questions;
//  }

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      categoryName: json['theCategory'] as String,
      categoryDesc: json['description'] as String,
      //  questions: parseQuestions(json['questions']),
    );
  }

//  static List<Question> parseQuestions(questionsJson) {
//    List<Question> questionsList = new List<Question>.from(questionsJson);
//    return questionsList;
//  }

  // get title
  String getName() {
    return this.categoryName;
  }

  // get title
  String getDescription() {
    return this.categoryDesc;
  }

  // Add new Questions
  void addQuestion(Question question) {
    this.questions.add(question);
  }

  // Get the total # of questions
  int getNumberOfQuestions() {
    return this.questions.length;
  }

  int getCurrentQuestionNumber() {
    return this.questionNumber + 1;
  }

  // Get the current Question
  String getCurrentQuestion() {
    return this.questions[this.questionNumber].getQuestion();
  }

  // Get the current correct answer
  String getCurrentCorrectAnswer() {
    return this.questions[this.questionNumber].getCorrectAnswer();
  }

  // Go to the next question
  bool nextQuestion() {
    if (this.questionNumber - 1 < this.questions.length - 1) {
      this.questionNumber++;
      return true;
    }
    return false;
  }

  bool isTheEnd() {
    return this.questionNumber >= this.questions.length - 1 ? true : false;
  }

  // All the current question options
  List<String> getCurrentOptional() {
    return this.questions[questionNumber].getOptional();
  }
}

//import 'package:quizx/';
//
//class Categories {
//  // Attributes
//  int _categoryId;
//  String _theCategory;
//  String _description;
//  List<String> _questions;
//
//  Categories(int categoryId, String theCategory, String description, List<> ) {
//    this._categoryId = categoryId;
//    this._theCategory = theCategory;
//    this._description = description;
//    this._questions
//  }
//}
