import 'package:flutter/material.dart';
import 'package:my_airbnb/model/house_model.dart';

class HouseViewmodel {
  List<HouseModel> houses = [
    HouseModel(
        imagePath: 'images/lakehouse.jpg',
        location: 'Ytteran,İsveç',
        date: '9-16 Ocak',
        cost: 4180),
    HouseModel(
        imagePath: 'images/sahil.jpg',
        location: 'Malax,Finlandiya',
        date: '16-21 Mayıs',
        cost: 7382),
    HouseModel(
        imagePath: 'images/apartman.jpg',
        location: 'Bodrum ,Türkiye',
        date: '13-18 Ekim',
        cost: 3266)
  ];



}
