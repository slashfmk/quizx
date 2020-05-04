import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Networking {
  // Attributes
  var _url;

  Networking(String url) {
    this._url = url;
  }

  Future<dynamic> getData() async {
    var response = await http.get(this._url);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse[0]);
      return jsonResponse;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
