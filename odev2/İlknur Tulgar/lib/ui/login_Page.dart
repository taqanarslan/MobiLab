import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:odev_2/companents/container_fonc.dart';
import 'package:odev_2/companents/custom_button.dart';
import 'package:odev_2/companents/sized_box.dart';
import 'package:odev_2/models/persons_list.dart';
import 'package:odev_2/models/routes.dart';

import '../companents/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameCont = TextEditingController();
  TextEditingController passCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textField_(
          controller: nameCont,
          icon: Icons.person,
          text: "person",
        ),
        sizedBox(),
        textField_(
          obscure: true,
          controller: passCont,
          icon: Icons.lock,
          text: "password",
        ),
        sizedBox(),
        customButtom(
          onTap: () {
            if (personsList.contains(nameCont.text.trim())) {
              int index = personsList.indexOf(nameCont.text.trim());
              if (passwordList[index] == passCont.text) {
                Get.toNamed(
                  RoutesClass.getLoginHomeRoute(),
                  arguments: [
                    {
                      "name": nameCont.text.trim(),
                      "password": passCont.text.trim(),
                      "age": 15,
                    }
                  ],
                );
              } else {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("parola yanlış")));
              }
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("kullanıcı adı yanlış")));
            }
          },
        ),
      ],
    );
  }
}
