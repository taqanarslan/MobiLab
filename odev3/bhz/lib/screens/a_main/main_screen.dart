import 'package:flutter/material.dart';

import '../../utils/constants/size_const.dart';
import '../../utils/constants/text_const.dart';
import '../explore/explore_screen.dart';

part 'main_screen.g.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: _androidNavBar,
    );
  }

  SizedBox get _androidNavBar {
    return SizedBox(
      height: SizeConst.bnbHeight,
      child: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: listOfItems(_index),
      ),
    );
  }
}
