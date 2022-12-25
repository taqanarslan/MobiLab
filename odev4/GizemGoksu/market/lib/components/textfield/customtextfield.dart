import 'package:flutter/material.dart';
import 'package:market/core/base/util/base_utility.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {Key? key,
      required this.hintText,
      required this.datacontroller,
      required this.icon,
      this.obsecureText,
      })
      : super(key: key);
  final String hintText;
  final TextEditingController datacontroller;
  final Icon icon;
  final bool? obsecureText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: TextField(
        obscureText: obsecureText ?? false,
        controller: datacontroller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: icon,
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(width: 1, color: ColorUtility.orange)),
            enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(width: 1, color: ColorUtility.orange))),
      ),
    );
  }
}
