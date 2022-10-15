import 'dart:convert';

import 'package:http/http.dart' as http;

class HomeScreenController {
  static Future<dynamic> getUsers() async {
    final Uri url = Uri.https('jsonplaceholder.typicode.com', 'users');
    final response = await http.get(url);
    final List<dynamic> jsonData = json.decode(response.body) as List<dynamic>;
    return jsonData;
  }
}
