import 'package:flutter/material.dart';

class CollectionModel {
  final String imagePath;
  final String mapText;
  final String dateText;
  final String mainText;
  final String dayText;
  final String title;
  final double price;
  final IconData icon;
  final IconData moneyicon;

  CollectionModel({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.icon,
    required this.moneyicon,
    required this.mapText,
    required this.mainText,
    required this.dayText,
    required this.dateText,
  });
}

class ProjectImages {
  final String imageUbudi = "assets/json/image/ubud.jpg";
  final String imageAbiansemal = "assets/json/image/abiansemal.jpg";
}
