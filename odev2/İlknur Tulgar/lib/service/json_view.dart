import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  final String name;
  final String username;
  final String email;

  User({required this.name, required this.username, required this.email});
}

Future<List<User>> getUsers() async {
  var data =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  var jsonData = jsonDecode(data.body);
  List<User> userList = [];
  for (var element in jsonData) {
    userList.add(User(
        name: element["name"],
        username: element["username"],
        email: element["email"]));
  }
  print(userList.length);
  return userList;
}
