import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

container_(String? nameText) {
  return Container(
    height: 40,
    width: 250,
    color: Colors.white,
    child: Text(
      nameText ?? "",
      style: TextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    ),
  );
}
