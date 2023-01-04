// ignore_for_file: non_constant_identifier_names

import 'package:http/http.dart' as http;

import 'model.dart';

class RemoteService {
  Future<List<Post>?> getPost() async {
    var client = http.Client();
    // http.Response response;
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    // print(url);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
      // If the server did return a 200 OK response,
      // then parse the JSON.
//
      //
    }
  }
}
