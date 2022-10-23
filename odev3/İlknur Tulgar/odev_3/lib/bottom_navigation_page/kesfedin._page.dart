import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:odev_4/models/bool_view.dart';
import 'package:odev_4/core/colors_view.dart';
import 'package:odev_4/core/icons_view.dart';
import 'package:odev_4/core/size_view.dart';
import 'package:odev_4/core/text_view.dart';
import 'package:odev_4/tabs/gol_kenari_tab_page.dart.dart';
import 'package:odev_4/tabs/tropik_tab_page.dart.dart';
import 'package:odev_4/tabs/tekeneler_tab_page.dart';

class KesfedinPage extends StatefulWidget {
  const KesfedinPage({Key? key}) : super(key: key);

  @override
  State<KesfedinPage> createState() => _KesfedinPageState();
}

class _KesfedinPageState extends State<KesfedinPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: BoolView().debugshowCheckedModeBanner,
        theme: ThemeData(
          cardTheme: CardTheme(elevation: SizeView().elevation),
          appBarTheme: AppBarTheme(
              backgroundColor: ColorsView().transparentColor,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              elevation: SizeView().elevation),
        ),
        home: NavigationTabBarPages());
  }
}

class NavigationTabBarPages extends StatelessWidget {
  const NavigationTabBarPages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: SizeView().tabLenght,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.2,
          title: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(SizeView().borderRadiuscircular)),
              hintText: TextView().hinttext,
              labelText: TextView().labeltext,
              prefixIcon: IconsView().prefixicon,
              suffixIcon: IconsView().suffixIcon,
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(
                labelColor: ColorsView().textColor,
                indicatorColor: ColorsView().textColor,
                tabs: [
                  Tab(
                    icon: IconsView().tabiconGolKenari,
                    text: TextView().golkenaritabtext,
                  ),
                  Tab(
                    icon: IconsView().tropiktabicon,
                    text: TextView().tropiktabtext,
                  ),
                  Tab(
                    icon: IconsView().teknelertab,
                    text: TextView().teknelerktabtext,
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                GolKenariTabPage(),
                TropikTabPage(),
                TeknelerPage(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
/* Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  width: 100,
                  height: 35,
                  child: Icon(
                    Icons.map_outlined,
                    semanticLabel: "harita",
                  ),
                ),*/