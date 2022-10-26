import 'dart:convert';

import 'package:flutter/services.dart' as rootBundle;

class ProductDataModel {
  String? title;

  String? url2;
  String? mapText;
  String? dateText;
  String? mainText;
  String? dayText;
  double? price;

// constructor
  ProductDataModel(
    this.mapText,
    this.dateText,
    this.mainText,
    this.dayText,
    this.price,
    this.title,
    this.url2,
  );

  //method that assign values to respective datatype vairables
  ProductDataModel.fromJson(
    Map<String, dynamic> json,
  ) {
    title = json['title'];
    mapText = json["mapText"];
    dateText = json["dateText"];
    mainText = json["mainText"];
    dayText = json["dayText"];
    price = json["price"];
    url2 = json['url2'];
  }
}

Future<List<ProductDataModel>> ReadJsonData() async {
  //read json file
  final jsondata =
      await rootBundle.rootBundle.loadString('assets/json/jsonformatter.json');
  //decode json data as list
  final list = json.decode(jsondata) as List<dynamic>;

  //map json and initialize using DataModel
  return list.map((e) => ProductDataModel.fromJson(e)).toList();
}
