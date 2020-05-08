import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:quizx/boilerplate/Questions.dart';

class QuestionService {
  // Attributes
  var _url;

  QuestionService(int id) {
    this._url = 'http://10.0.2.2:4000/question/byCategory/${id}';
  }

  Future<List<Questions>> getData() async {
    http.Response response =
        await http.get(this._url, headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      List<dynamic> body = convert.jsonDecode(response.body);

      List<Questions> questions =
          body.map((dynamic item) => Questions.fromJson(item)).toList();

      List<String> q = new List();

//      for (final itm in questions) {
//        print(itm.q);
//        q.add(itm.q);
//      }

      return questions;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      throw "Can't get Questions";
    }
  }
}
