import 'package:enes_bilik/views/home/model/button_model.dart';
import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  final NamedColorModel namedColorModel;
  const ColoredButton({Key? key, required this.namedColorModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: namedColorModel.color,
      child: Center(
        child: Text(
          namedColorModel.colorName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
