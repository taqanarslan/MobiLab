import 'package:flutter/material.dart';

import '../../utils/constants/radius_const.dart';
import '../../utils/constants/size_const.dart';

class ColorBoxWidget extends StatelessWidget {
  const ColorBoxWidget(
      {Key? key,
      required this.colorText,
      required this.color,
      required this.colorFunc})
      : super(key: key);
  final String colorText;
  final Color color;
  final double size = SizeConst.defaultColorSize;
  final Function() colorFunc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: colorFunc,
      child: Column(
        children: [
          Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
                color: color,
                borderRadius: RadiusConst.colorBox10,
                border: Border.all(color: Colors.black, width: 0.4)),
          )
        ],
      ),
    );
  }
}
