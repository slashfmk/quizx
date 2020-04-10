
import 'package:quizx/model/Category.dart';
import 'package:quizx/model/Question.dart';

class GenQuiz{

  Category _general;

  GenQuiz(){
    this._general = new Category("General Questions", "This is a bag of general questions");
    // Questions

    List<String> opt0 = ["Snug", "plexxus", "Brinette"];
    Question q0 = new Question("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", "jarvis", opt0);


    List<String> opt1 = ["Snug", "plexxus", "Brinette"];
    Question q1 = new Question("Who's the name of Yannick Fumukani??", "jarvis", opt1);
    // Questions
    List<String> opt2 = ["Steve Jobs", "Jeff Bezos"];
    Question q2 = new Question("Who founded microsoft??", "Bill gates", opt2);

    // Questions
    List<String> opt3 = ["1600", "2010", "3678", "6666"];
    Question q3 = new Question("In what year was microsoft founded??", "1967", opt3);

    // Questions
    Question q4 = new Question("Who founded paypal??", "Elan Musk", ["Snug", "plexxus"]);

    this._general.addQuestion(q0);
    this._general.addQuestion(q1);
    this._general.addQuestion(q2);
    this._general.addQuestion(q3);
    this._general.addQuestion(q4);
  }

  Category getCategory(){
    return this._general;
  }


}