import 'package:flutter/material.dart';

import '../util/color.dart';

class MySubmitButton extends StatefulWidget {
  const MySubmitButton({Key? key,  this.onValid,  this.buttontext,  this.height,  this.width}) : super(key: key);
  final Function? onValid;
  final String? buttontext;
  final double? height;
  final double? width;

  @override
  State<MySubmitButton> createState() => _MySubmitButtonState();
}

class _MySubmitButtonState extends State<MySubmitButton> {


  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => GestureDetector(
              onTap: () {
                if (Form.of(context)?.validate() == true) {
                  widget.onValid!() ?? (){};
                }
              },
              child: Container(
                height: widget.height ?? 30,
                width: widget.width ?? 100,
                decoration: BoxDecoration(
                    color: UtilityColor.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(widget.buttontext?? 'Submit'),
                ),
              ),
            ));
  }
}
