import 'package:flutter/material.dart';

import 'package:odev_4/core/colors_view.dart';
import 'package:odev_4/core/size_view.dart';
import 'package:odev_4/core/text_view.dart';

class GelenKutusuPage extends StatefulWidget {
  const GelenKutusuPage({Key? key}) : super(key: key);

  @override
  State<GelenKutusuPage> createState() => _GelenKutusuPageState();
}

class _GelenKutusuPageState extends State<GelenKutusuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(
        TextView().gelenkutusutext,
        style: TextStyle(
          fontSize: SizeView().fontSize,
          color: ColorsView().textColor,
        ),
      ),
    );
  }
}
