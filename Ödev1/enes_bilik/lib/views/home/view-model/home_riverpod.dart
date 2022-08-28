import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/button_model.dart';

final titleProvider = StateNotifierProvider<TitleNotifier, NamedColorModel>(
    (ref) => TitleNotifier());

class TitleNotifier extends StateNotifier<NamedColorModel> {
  TitleNotifier() : super(const NamedColorModel.init());

  void changeTitle(NamedColorModel model) {
    state = model;
  }
}

class NamedColorList {
  List<NamedColorModel> get colors => _colors;
  final List<NamedColorModel> _colors = const [
    NamedColorModel(colorName: 'Red', color: Colors.red),
    NamedColorModel(colorName: 'Green', color: Colors.green),
    NamedColorModel(colorName: 'Blue', color: Colors.blue),
    NamedColorModel(colorName: 'Yellow', color: Colors.yellow),
    NamedColorModel(colorName: 'Orange', color: Colors.orange),
    NamedColorModel(colorName: 'Purple', color: Colors.purple),
    NamedColorModel(colorName: 'Brown', color: Colors.brown),
    NamedColorModel(colorName: 'Cyan', color: Colors.cyan),
    NamedColorModel(colorName: 'DeepPurple', color: Colors.deepPurple),
    NamedColorModel(colorName: 'DeepOrange', color: Colors.deepOrange),
    NamedColorModel(colorName: 'Grey', color: Colors.grey),
    NamedColorModel(colorName: 'Indigo', color: Colors.indigo),
    NamedColorModel(colorName: 'LightBlue', color: Colors.lightBlue),
    NamedColorModel(colorName: 'LightGreen', color: Colors.lightGreen),
    NamedColorModel(colorName: 'Pink', color: Colors.pink),
    NamedColorModel(colorName: 'Teal', color: Colors.teal),
    NamedColorModel(colorName: 'Amber', color: Colors.amber),
    NamedColorModel(colorName: 'BlueGrey', color: Colors.blueGrey),
  ];
}
