import 'geo_model.dart';

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});

  factory Address.fromJson(Map<String, dynamic> json) {
    final String street = json['street'];
    final String suite = json['suite'];
    final String city = json['city'];
    final String zipcode = json['zipcode'];
    final Geo geo = Geo.fromJson(json['geo']);
    return Address(
      city: city,
      geo: geo,
      street: street,
      suite: suite,
      zipcode: zipcode
    );
  }
}
