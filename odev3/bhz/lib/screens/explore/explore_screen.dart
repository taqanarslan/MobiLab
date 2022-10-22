import 'package:flutter/material.dart';

import '../../utils/constants/padding_const.dart';
import '../../utils/constants/radius_const.dart';
import '../../utils/constants/text_const.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with TickerProviderStateMixin {
  // late TabController _tabController;

  @override
  void initState() {
    // _tabController = TabController(length: 10, vsync: this);
    // _tabController.animateTo(2);
    super.initState();
  }

  @override
  void dispose() {
    // _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        body: SafeArea(
          child: Column(children: [
            const SearchField(),
            const TabBars(),
            Expanded(
              child: SizedBox(
                height: 500,
                child: TabBarView(
                  children: [
                    ListView(
                      padding: PaddingConst.vertical16,
                      children: const [
                        OmgListTile(),
                        OmgListTile(),
                      ],
                    ),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class OmgListTile extends StatelessWidget {
  const OmgListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: PaddingConst.horizontal16 + PaddingConst.bottom32,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: ClipRRect(
                borderRadius: RadiusConst.image,
                child: Stack(children: [
                  Positioned(
                      bottom: 0,
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Image.network(
                        'https://p.bookcdn.com/data/Photos/300x302/10041/1004149/1004149194/Boudl-Al-Shatea-photos-Exterior.JPEG',
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                      right: 10,
                      top: 10,
                      child: IconButton(
                        icon: const Icon(Icons.favorite_outline,
                            color: Colors.white, size: 30),
                        onPressed: () {},
                      ))
                ])),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'El Port de la Selva, Spain',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.grey[800]!,
                          size: 18,
                        ),
                        const Text(
                          '4.74',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  '2,438 kilometers away',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  'Feb 1-6',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text('\$401',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    Text(' night',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[700])),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: PaddingConst.horizontal16 + PaddingConst.vertical12,
      padding: PaddingConst.horizontal16 + PaddingConst.vertical4,
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: RadiusConst.containerRadius,
          color: Colors.white,
          border: Border.all(color: Colors.grey[300]!, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200]!,
              offset: const Offset(
                0.0,
                0.0,
              ),
              blurRadius: 4.0,
              spreadRadius: 5.0,
            ) //BoxShadow
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(flex: 1, child: Icon(Icons.search, color: Colors.grey[800])),
          Expanded(
            flex: 7,
            child: Padding(
              padding: PaddingConst.vertical4 + PaddingConst.horizontal12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    TextConst.whereToGo,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    TextConst.inputHit,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[500]!,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  //TODO: Implement logic
                },
                child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey[400]!, width: 0.5),
                        borderRadius: RadiusConst.containerRadius),
                    child: Icon(Icons.sort, color: Colors.grey[800])),
              ))
        ],
      ),
    );
  }
}

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
            child: _TabBarItem(
              text: TextConst.tabOMG,
              icon: Icons.sentiment_very_satisfied_outlined,
            ),
          ),
          Tab(
            child: _TabBarItem(
              text: TextConst.tabNationalParks,
              icon: Icons.park_outlined,
            ),
          ),
          Tab(
            child: _TabBarItem(
              text: TextConst.tabAframes,
              icon: Icons.villa_outlined,
            ),
          ),
          Tab(
            child: _TabBarItem(
              text: TextConst.tabLuxe,
              icon: Icons.add,
            ),
          ),
          Tab(
            child: _TabBarItem(
              text: TextConst.tabBeach,
              icon: Icons.beach_access_outlined,
            ),
          ),
          Tab(
            child: _TabBarItem(
              text: TextConst.tabOMG,
              icon: Icons.sentiment_very_satisfied_outlined,
            ),
          ),
          Tab(
            child: _TabBarItem(
              text: TextConst.tabNationalParks,
              icon: Icons.park_outlined,
            ),
          ),
          Tab(
            child: _TabBarItem(
              text: TextConst.tabAframes,
              icon: Icons.villa_outlined,
            ),
          ),
          Tab(
            child: _TabBarItem(
              text: TextConst.tabLuxe,
              icon: Icons.add,
            ),
          ),
          Tab(
            child: _TabBarItem(
              text: TextConst.tabBeach,
              icon: Icons.beach_access_outlined,
            ),
          ),
        ],
      ),
    );
  }
}

class _TabBarItem extends StatelessWidget {
  const _TabBarItem({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.grey),
        Text(text,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
