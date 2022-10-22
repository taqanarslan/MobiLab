import 'package:flutter/material.dart';
import 'screens/a_main/main_screen.dart';
import 'screens/auth/auth_screen.dart';
import 'screens/explore/explore_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(centerTitle: true),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.red[900],
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(color: Colors.red[900]),
          unselectedLabelStyle: const TextStyle(color: Colors.grey),showUnselectedLabels: true
        ),
      ),
      home: const MainScreen(),
      routes: {
        '/auth': (context) => const AuthScreen(),
        '/main': (context) => const MainScreen(),
        '/explore': (context) => const ExploreScreen(),
      },
    );
  }
}
