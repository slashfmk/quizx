
class WrongAnswerRecap{

  String _question;
  String _userWrongAnswer;
  String _correctAnswer;

  WrongAnswerRecap(String question, String userWrongAnswer, String correctAnswer){
  this._correctAnswer = correctAnswer;
  this._userWrongAnswer = userWrongAnswer;
  this._question = question;
  }

  String getUserAnswer(){
    return this._userWrongAnswer;
  }

  String getCorrectAnswer(){
    return this._correctAnswer;
  }

  String getQuestion(){
    return this._question;
  }

}