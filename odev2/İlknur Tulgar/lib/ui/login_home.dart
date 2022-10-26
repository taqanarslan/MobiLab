import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:odev_2/companents/container_fonc.dart';
import 'package:odev_2/service/json_view.dart';

import 'package:odev_2/models/routes.dart';
import 'package:odev_2/companents/sized_box.dart';
import 'package:odev_2/companents/text_field.dart';
import 'package:odev_2/ui/login_Page.dart';

import '../models/persons_list.dart';
import 'package:http/http.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 203, 89, 123),
      body: FutureBuilder(
          future: getUsers(),
          builder: (context, AsyncSnapshot snapshot) {
            print(snapshot.data);
            if (snapshot.data == null) {
              return Center(
                child: Container(
                  child: Text("loading"),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, int index) {
                  return ListTile(
                      title: Text(snapshot.data[index].name),
                      subtitle: Text(snapshot.data[index].email));
                },
              );
            }
          }),
    );
  }
}
