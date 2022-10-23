import 'package:flutter/material.dart';
import 'package:my_airbnb/util/util_color.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(color: MyColors.black),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
