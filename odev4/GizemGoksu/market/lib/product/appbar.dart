import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/controllers/controller.dart';
import 'package:market/core/base/util/base_utility.dart';


class MyAppBar extends StatelessWidget {
  MyAppBar({super.key, required this.whereItIs, required this.otherPage});
  final String whereItIs;
  final String otherPage;
  Controller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorUtility.orangeOnAppBar,
      title: SizedBox(
        height: AppComponentSizes.appBarHeight,
        child: const Image(
          image: AssetImage('assets/images/migros_logo.png'),
        ),
      ),
      leading: IconButton(
        onPressed: () => controller.passingBetweenPages(otherPage),
        icon: IconUtiliity.arrowBack,
      ),
      actions: [
        IconButton(
            icon: IconUtiliity.shoppinCartIcon,
            onPressed: (() => controller.passingToShoppingCart())),
      ],
    );
  }
}
