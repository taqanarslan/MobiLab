import 'package:flutter/material.dart';
import '../../models/color_model.dart';
import '../constants/color_text.dart';

class ColorCatalog {
  static const List<ColorModel> colorList = [
    whiteColor,
    pinkColor,
    blueColor,
    greenColor,
    orangeColor,
    redColor,
    purpleColor,
    limeColor,
    brownColor
  ];

  static const ColorModel whiteColor =
  ColorModel(colorText: ColorTextConst.white, color: Colors.white);
  static const ColorModel pinkColor =
  ColorModel(colorText: ColorTextConst.pink, color: Colors.pink);
  static const ColorModel blueColor =
  ColorModel(colorText: ColorTextConst.blue, color: Colors.blue);
  static const ColorModel greenColor =
  ColorModel(colorText: ColorTextConst.green, color: Colors.green);
  static const ColorModel orangeColor =
  ColorModel(colorText: ColorTextConst.orange, color: Colors.orange);
  static const ColorModel redColor =
  ColorModel(colorText: ColorTextConst.red, color: Colors.red);
  static const ColorModel purpleColor =
  ColorModel(colorText: ColorTextConst.purple, color: Colors.purple);
  static const ColorModel limeColor =
  ColorModel(colorText: ColorTextConst.lime, color: Colors.lime);
  static const ColorModel brownColor =
  ColorModel(colorText: ColorTextConst.brown, color: Colors.brown);
}

