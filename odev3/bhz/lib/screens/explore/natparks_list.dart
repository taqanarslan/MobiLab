import 'package:flutter/material.dart';
import '../../utils/constants/padding_const.dart';
import '../../utils/db/explore_list.dart';
import 'explore_tile.dart';

class NatParksList extends StatelessWidget {
  const NatParksList({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, i) => ExploreTile(model: ExploreFakeDB.list[i]),
      itemCount: ExploreFakeDB.list.length,
      padding: PaddingConst.vertical16,
    );
  }
}
