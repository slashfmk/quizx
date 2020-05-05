import 'package:quizx/model/Question.dart';

class Category {
  List<Question> _questions;
  String _categoryName;
  String _categoryDesc;
  int _questionNumber = 0;

  Category(String name, String desc) {
    this._categoryName = name;
    this._categoryDesc = desc;
    this._questions = new List<Question>();
  }

  // get title
  String getName() {
    return this._categoryName;
  }

  // get title
  String getDescription() {
    return this._categoryDesc;
  }

  // Add new Questions
  void addQuestion(Question question) {
    this._questions.add(question);
  }

  // Get the total # of questions
  int getNumberOfQuestions() {
    return this._questions.length;
  }

  int getCurrentQuestionNumber() {
    return this._questionNumber + 1;
  }

  // Get the current Question
  String getCurrentQuestion() {
    return this._questions[this._questionNumber].getQuestion();
  }

  // Get the current correct answer
  String getCurrentCorrectAnswer() {
    return this._questions[this._questionNumber].getCorrectAnswer();
  }

  // Go to the next question
  bool nextQuestion() {
    if (this._questionNumber < this._questions.length) {
      this._questionNumber++;
      return true;
    }
    return false;
  }

  bool isTheEnd() {
    return this._questionNumber >= this._questions.length - 1 ? true : false;
  }

  // All the current question options
  List<String> getCurrentOptional() {
    return this._questions[_questionNumber].getOptional();
  }
}
