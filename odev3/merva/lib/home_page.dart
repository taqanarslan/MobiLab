import 'package:flutter/material.dart';
import 'package:my_airbnb/house_page.dart';

import 'core/components/app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          height: 120,
          controller: _controller,
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            HousePage(),
            Container(
              color: Colors.cyan,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
