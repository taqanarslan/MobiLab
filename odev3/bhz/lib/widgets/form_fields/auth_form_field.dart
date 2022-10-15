import 'package:flutter/material.dart';

import '../../utils/constants/margin_const.dart';
import '../../utils/constants/padding_const.dart';
import '../../utils/constants/radius_const.dart';

Widget authContainerForTextFormField(
    TextEditingController controller,
    FocusNode focusNode,
    String hintText,
    bool obscureText,
    bool isEnabled,
    TextInputType keyboardType,
    Function(String?) onSubmitted) {
  return Container(
    margin: PaddingConst.vertical8,
    padding: PaddingConst.horizontal16,
    decoration: BoxDecoration(
        color: Colors.white.withOpacity(.15),
        borderRadius: RadiusConst.textInput),
    child: TextFormField(
      enabled: isEnabled,
      autocorrect: false,
      textCapitalization: TextCapitalization.none,
      enableSuggestions: false,
      keyboardType: keyboardType,
      obscureText: obscureText,
      controller: controller,
      focusNode: focusNode,
      cursorColor: Colors.white.withOpacity(0.7),
      onFieldSubmitted: onSubmitted,
      style: const TextStyle(color: Colors.white),
      cursorWidth: 1,
      cursorHeight: 20,
      decoration: InputDecoration(
          filled: false,
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white.withOpacity(.9)),
          focusedBorder: InputBorder.none,
          errorStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 12)),
    ),
  );
}

class AuthFormField extends StatelessWidget {
  const AuthFormField({Key? key, required this.controller, required this.focusNode, required this.hintText, required this.obscureText, required this.isEnabled, required this.keyboardType, required this.onSubmitted}) : super(key: key);
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final bool obscureText;
  final bool isEnabled;
  final TextInputType keyboardType;
  final Function(String?) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MarginConst.vertical8,
      padding: PaddingConst.horizontal16,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.15),
          borderRadius: RadiusConst.textInput),
      child: TextFormField(
        enabled: isEnabled,
        autocorrect: false,
        textCapitalization: TextCapitalization.none,
        enableSuggestions: false,
        keyboardType: keyboardType,
        obscureText: obscureText,
        controller: controller,
        focusNode: focusNode,
        cursorColor: Colors.white.withOpacity(0.7),
        onFieldSubmitted: onSubmitted,
        style: const TextStyle(color: Colors.white),
        cursorWidth: 1,
        cursorHeight: 20,
        decoration: InputDecoration(
            filled: false,
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white.withOpacity(.9)),
            focusedBorder: InputBorder.none,
            errorStyle:
                TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 12)),
      ),
    );
  }
}
