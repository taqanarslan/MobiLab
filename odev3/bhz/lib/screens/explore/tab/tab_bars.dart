
import 'package:flutter/material.dart';

import '../../../utils/constants/text_const.dart';
import 'tab_bar_item.dart';

class TabBars extends StatelessWidget {
  const TabBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey[200]!,
            offset: const Offset(
              1.0,
              1.0,
            ),
            blurRadius: 1.0,
            spreadRadius: 1.0)
      ]),
      child: const TabBar(
        indicatorColor: Colors.black,
        isScrollable: true,
        tabs: [
          Tab(
            child: TabBarItem(
              text: TextConst.tabOMG,
              icon: Icons.sentiment_very_satisfied_outlined,
            ),
          ),
          Tab(
            child: TabBarItem(
              text: TextConst.tabNationalParks,
              icon: Icons.park_outlined,
            ),
          ),
          Tab(
            child: TabBarItem(
              text: TextConst.tabAframes,
              icon: Icons.villa_outlined,
            ),
          ),
          Tab(
            child: TabBarItem(
              text: TextConst.tabLuxe,
              icon: Icons.add,
            ),
          ),
          Tab(
            child: TabBarItem(
              text: TextConst.tabBeach,
              icon: Icons.beach_access_outlined,
            ),
          ),
          Tab(
            child: TabBarItem(
              text: TextConst.tabOMG,
              icon: Icons.sentiment_very_satisfied_outlined,
            ),
          ),
          Tab(
            child: TabBarItem(
              text: TextConst.tabNationalParks,
              icon: Icons.park_outlined,
            ),
          ),
          Tab(
            child: TabBarItem(
              text: TextConst.tabAframes,
              icon: Icons.villa_outlined,
            ),
          ),
          Tab(
            child: TabBarItem(
              text: TextConst.tabLuxe,
              icon: Icons.add,
            ),
          ),
          Tab(
            child: TabBarItem(
              text: TextConst.tabBeach,
              icon: Icons.beach_access_outlined,
            ),
          ),
        ],
      ),
    );
  }
}