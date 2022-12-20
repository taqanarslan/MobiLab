import 'package:flutter/material.dart';
import 'package:market/classes/button_class.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.button});
  final Button button;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: button.function,
      child: Container(
        height: button.box.height,
        width: button.box.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(button.box.borderRadius),
            border: Border.all(
                color: button.box.borderColor,width: button.box.borderWidth),
            color: button.box.color),
        child: Center(child: button.child)
      ),
    );
  }
}
