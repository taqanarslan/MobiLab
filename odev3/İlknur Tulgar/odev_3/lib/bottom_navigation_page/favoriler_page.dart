import 'package:flutter/material.dart';

import 'package:odev_4/core/size_view.dart';
import 'package:odev_4/core/text_view.dart';

class FavorilerPage extends StatelessWidget {
  const FavorilerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(
        TextView().isteklistesitext,
        style: TextStyle(fontSize: SizeView().fontSize),
      ),
    );
  }
}
