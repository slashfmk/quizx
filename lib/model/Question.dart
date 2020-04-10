class Question {
  String _q;
  String _correctAnswer;
  List<String> _optional;

  Question(String question, correctAnswer, List<String> optional) {
    this._q = question;
    this._correctAnswer = correctAnswer;
    this._optional = optional;
    this._optional.add(this._correctAnswer);
  }

  String getQuestion() {
    return this._q;
  }

  // return the correct answer
  String getCorrectAnswer() {
    return this._correctAnswer;
  }

  List<String> getOptional() {
    return this._optional;
  }
}
