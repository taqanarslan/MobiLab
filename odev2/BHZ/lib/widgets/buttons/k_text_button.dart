import 'package:flutter/material.dart';

import '../../utils/constants/radius_const.dart';

class KTextButton extends StatelessWidget {
  const KTextButton({Key? key, required this.text, required this.onTap})
      : super(key: key);
  final String text;
  final dynamic Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue[800]!.withOpacity(0.7),
              borderRadius: RadiusConst.textInput),
          height: 40,
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ));
  }
}
