import 'package:flutter/material.dart';

import 'package:odev_4/core/colors_view.dart';

import 'models/navigation_bar_items.dart';

void main() {
  runApp(const TatilView());
}

class TatilView extends StatefulWidget {
  const TatilView({Key? key}) : super(key: key);

  @override
  State<TatilView> createState() => _TatilViewState();
}

class _TatilViewState extends State<TatilView> {
  ColorsView color = ColorsView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          backgroundColor: color.transparentColor,
        ),
        home: Scaffold(
          body: HomePage(),
        ));
  }
}
