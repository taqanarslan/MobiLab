import 'package:flutter/material.dart';
import 'screens/auth/auth_screen.dart';
import 'screens/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(centerTitle: true),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black),
        ),
      ),
      home: const AuthScreen(),
      routes: {
        '/auth':  (context) => const AuthScreen(),
        '/home':  (context) => const HomeScreen(),
      },
    );
  }
}
