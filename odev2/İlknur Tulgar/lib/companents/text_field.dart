import 'package:flutter/material.dart';
import 'package:get/get.dart';

textField_({icon, text, onTap, obscure, controller}) {
  return TextField(
      obscureText: obscure ?? false,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        prefixIconColor: Colors.purple,
        border: OutlineInputBorder(),
        labelText: text,
      ));
}
