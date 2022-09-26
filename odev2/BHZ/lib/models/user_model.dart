import 'adress_model.dart';
import 'company_model.dart';

class UserModel {
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;

  UserModel(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address,
      required this.phone,
      required this.website,
      required this.company});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final int id = json['id'];
    final String name = json['name'];
    final String username = json['username'];
    final String email = json['email'];
    final Address address = Address.fromJson(json['address']);
    final String phone = json['phone'];
    final String website = json['website'];
    final Company company = Company.fromJson(json['company']);
    return UserModel(
      name: name,
      email: email,
      address: address,
      company: company,
      id: id,
      phone: phone,
      username: username,
      website: website,
    );
  }
}

