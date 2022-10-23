import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:odev_2/ui/login_Page.dart';

import 'package:odev_2/models/routes.dart';

class customButtom extends StatefulWidget {
  final Function() onTap;
  final double? height;
  final double? width;
  final Color? boxcolor;
  const customButtom(
      {Key? key, required this.onTap, this.height, this.width, this.boxcolor})
      : super(key: key);

  @override
  State<customButtom> createState() => _customButtomState();
}

class _customButtomState extends State<customButtom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onTap,
        child: Container(
            height: widget.height ?? 50,
            width: widget.width ?? 100,
            color: widget.boxcolor ?? Colors.blue,
            child: Center(
                child: Text(
              "log in",
              style: TextStyle(fontSize: 25),
            ))));
  }
}
