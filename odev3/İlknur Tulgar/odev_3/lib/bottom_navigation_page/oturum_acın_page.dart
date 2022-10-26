import 'package:flutter/material.dart';

import 'package:odev_4/core/colors_view.dart';
import 'package:odev_4/core/size_view.dart';
import 'package:odev_4/core/text_view.dart';

class OturumAcinPage extends StatefulWidget {
  const OturumAcinPage({Key? key}) : super(key: key);

  @override
  State<OturumAcinPage> createState() => _OturumAcinPageState();
}

class _OturumAcinPageState extends State<OturumAcinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(
        TextView().profiltext,
        style: TextStyle(
            fontSize: SizeView().fontSize, color: ColorsView().textColor),
      ),
    );
  }
}
