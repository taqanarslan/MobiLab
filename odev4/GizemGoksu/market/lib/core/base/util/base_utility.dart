import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/models/box_class.dart';
import 'package:market/components/textfield/customtextfield.dart';

class BoxUtility {
  static Box addToSCBox = Box(
      height: AppComponentSizes.addToSCBoxHeight,
      width: AppComponentSizes.addToScBoxWidth,
      color: ColorUtility.orange,
      borderColor: ColorUtility.white,
      borderWidth: AppComponentSizes.addToSCBoxBorderWidth,
      borderRadius: AppComponentSizes.addToSCBoxBorderRadius);
  static Box bigBox = Box(
    height: AppComponentSizes.bigBoxHeight,
    width: AppComponentSizes.bigBoxWidth,
    color: ColorUtility.white,
    borderColor: ColorUtility.orange,
    borderWidth: AppComponentSizes.bigBoxBorderWidth,
    borderRadius: AppComponentSizes.bigBoxBorderRadius,
  );
  static Box completeShoppingBox = Box(
    height: AppComponentSizes.completeShoppingBoxHeight,
    width: AppComponentSizes.completeShoppingBoxWidth,
    color: ColorUtility.orange,
    borderColor: ColorUtility.orangeOnBorder,
    borderWidth: AppComponentSizes.completeShoppingBoxBorderWidth,
    borderRadius: AppComponentSizes.completeShoppingBoxBorderRadius,
  );
  static Box loginBox = Box(
      height: 50,
      width: 200,
      color: ColorUtility.orange,
      borderColor: ColorUtility.transparent,
      borderRadius: 15,
      borderWidth: 0
  );
}

class ColorUtility {
  static Color orange = Colors.orange;
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color transparent = Colors.transparent;
  static Color orangeOnAppBar = const Color.fromARGB(255, 245, 125, 13);
  static Color orangeBackground = const Color.fromARGB(255, 252, 216, 162);
  static Color orangeOnBorder = const Color.fromARGB(255, 223, 134, 0);
}

class AppComponentSizes {
  static double appBarHeight = 50;
  static double noBorderRadius = 0;
  static double bigBoxHeight = 150;
  static double bigBoxWidth = 380;
  static double bigBoxBorderWidth = 3;
  static double bigBoxBorderRadius = 10;
  static double addToSCBoxHeight = 30;
  static double addToScBoxWidth = 100;
  static double addToSCBoxBorderWidth = 0;
  static double addToSCBoxBorderRadius = 10;
  static double completeShoppingBoxHeight = 40;
  static double completeShoppingBoxWidth = 160;
  static double completeShoppingBoxBorderWidth = 2;
  static double completeShoppingBoxBorderRadius = 12;
  static double smallSpaceHeight = 10;
  static double bigSpaceHeight = 75;
}

class IconUtiliity {
  static Icon addingIcon = const Icon(Icons.add);
  static Icon removingIcon = const Icon(Icons.remove);
  static Icon deletingIcon = Icon(Icons.delete, color: ColorUtility.orange);
  static Icon arrowBack = const Icon(Icons.arrow_back);
  static Icon shoppingCartIcon = const Icon(Icons.shopping_cart);
  static Icon logoutIcon = const Icon(Icons.logout);
}

Text myTextWidget(data, Color fontColor, double fontSize) => Text(
      data,
      style: TextStyle(color: fontColor, fontSize: fontSize),
    );

ClipRRect customImage(String asset, double height, double width) {
  return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: SizedBox(
          height: height,
          width: width,
          child: Image(image: AssetImage(asset))));
}

Row informationRow(Widget productImage, Widget productInformationRow) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [productImage, productInformationRow]);
}

Container bigInformationBox(Widget informationRow) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(
            color: BoxUtility.bigBox.borderColor,
            width: BoxUtility.bigBox.borderWidth),
        borderRadius: BorderRadius.circular(BoxUtility.bigBox.borderRadius),
        color: BoxUtility.bigBox.color),
    height: BoxUtility.bigBox.height,
    width: BoxUtility.bigBox.width,
    child: informationRow,
  );
}

CustomTextfield loginTextField(String data, Rx<TextEditingController> controller) {
  return CustomTextfield(
    hintText: data == 'Name' ? data : 'Password',
    datacontroller: controller.value,
    icon: Icon(
      data == 'Name' ? Icons.account_circle : Icons.lock,
      color: ColorUtility.orange,
    ),
    obsecureText: data == 'Password' ? true : false,
  );
}

SizedBox space(double height) => SizedBox(
      height: height,
    );
