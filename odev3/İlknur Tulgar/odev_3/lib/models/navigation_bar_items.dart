import 'package:flutter/material.dart';
import 'package:odev_4/core/colors_view.dart';
import 'package:odev_4/core/icons_view.dart';
import 'package:odev_4/models/page_list.dart';
import 'package:odev_4/core/size_view.dart';
import 'package:odev_4/core/text_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IconsView iconsView = IconsView();
  TextView textView = TextView();
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: SizeView().unselectedFontSize,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: ColorsView().redColor,
          unselectedItemColor: ColorsView().textColor,
          items: [
            BottomNavigationBarItem(
              icon: iconsView.kesfedinicon,
              label: textView.kesfedintext,
            ),
            BottomNavigationBarItem(
                icon: iconsView.favorilericon, label: textView.favorilertext),
            BottomNavigationBarItem(
                icon: iconsView.gelenkutusuicon,
                label: textView.gelenkutusutext),
            BottomNavigationBarItem(
                icon: iconsView.oturumacinicon, label: textView.oturumacintext),
          ]),
    );
  }
}
