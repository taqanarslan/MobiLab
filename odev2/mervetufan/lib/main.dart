import 'package:flutter/material.dart';
import 'package:mervetufan/home.dart';
import 'package:mervetufan/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: LightTheme().theme,
        home: const HomePage());
  }
}
