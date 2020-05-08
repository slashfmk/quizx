import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:quizx/model/Categories.dart';

class CategoryService {
  // Attributes
  var _url;

  CategoryService() {
    this._url = 'http://10.0.2.2:4000/category/withquestions';
  }

  Future<List<Categories>> getData() async {
    http.Response response = await http.get(this._url);

    if (response.statusCode == 200) {
      List<dynamic> body = convert.jsonDecode(response.body);

      List<Categories> categories =
          body.map((dynamic item) => Categories.fromJson(item)).toList();

      return categories;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      throw "Can't get Categories";
    }
  }
}
