import 'package:flutter/material.dart';
import 'package:market/classes/box_class.dart';
class Button {
  Box box;
  Function() function;
  Widget child;
  Button(
      {
      required this.box,
      required this.function,
      required this.child,
      });
}
