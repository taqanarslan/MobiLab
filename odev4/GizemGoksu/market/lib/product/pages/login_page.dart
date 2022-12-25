import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/models/button_class.dart';
import 'package:market/components/buttons/custom_button.dart';
import 'package:market/core/base/util/base_utility.dart';
import '../../controllers/controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Controller controller = Get.put(Controller());
  late Button loginButton = Button(box: BoxUtility.loginBox,function: (() => controller.loginFunction()),child: myTextWidget('Giriş Yap', ColorUtility.white, 15));
  @override
  void initState() {
    super.initState();
    controller.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtility.white,
      body: loginPageColumn(controller, loginButton),
    );
  }

  Center loginPageColumn(Controller controller, Button loginButton) {
    return Center(
      child: Column(
        children: [
          space(AppComponentSizes.bigSpaceHeight),
          customImage('assets/images/migros_logo_resim.jpg', 200, 200),
          myTextWidget(
              'Migros Sanal Markete Hoş Geldiniz!', ColorUtility.orange, 15),
          space(AppComponentSizes.smallSpaceHeight),
          loginTextField('Name', controller.nameController),
          space(AppComponentSizes.smallSpaceHeight),
          loginTextField('Password', controller.passwordController),
          space(AppComponentSizes.smallSpaceHeight),
          CustomButton(button: loginButton),
        ],
      ),
    );
  }
}
