import 'package:flutter/material.dart';
import '../../product/widgets/search_fields.dart';
import 'natparks_list.dart';
import 'omg_list_widget.dart';
import 'tab/tab_bars.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
                child: TabBarView(
                  children: [
                    const OmgListWidget(),
                    const NatParksList(),
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