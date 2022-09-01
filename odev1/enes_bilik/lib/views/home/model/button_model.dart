import 'package:flutter/material.dart';

@immutable
class NamedColorModel {
  final String colorName;
  final Color color;
  const NamedColorModel({
    required this.colorName,
    required this.color,
  });
  const NamedColorModel.init()
      : this(colorName: '♥ Beyza ♥', color: Colors.red);

  NamedColorModel copyWith({
    String? colorName,
    Color? color,
  }) {
    return NamedColorModel(
      colorName: colorName ?? this.colorName,
      color: color ?? this.color,
    );
  }
}
