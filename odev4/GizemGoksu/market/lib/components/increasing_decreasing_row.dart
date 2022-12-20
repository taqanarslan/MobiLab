import 'package:flutter/material.dart';
import 'package:market/classes/product_class.dart';
import 'package:market/controllers/controller.dart';
import 'package:get/get.dart';
import 'package:market/core/base/util/base_utility.dart';

class IncreasingDecreasingRow extends StatelessWidget {
  IncreasingDecreasingRow({super.key,required this.product});
  Product product;
  @override
  Widget build(BuildContext context) {
    Controller controller = Get.find();
    return ToggleButtons(
      onPressed: ((index) { // bu widget setState ile kullanılabiliyor ama ben uygulamada getx'e ağırlık verdiğim için toggle buttons için gerekli değişkenleri controller'da obs ile takip ettim
        controller.index.value = index;  // ve gerekli fonksiyonları controllerda tuttum
        controller.toggleButtonFunction(product);
      }),
      isSelected: controller.isSelected,
      constraints: BoxConstraints.tight(const Size(35,35)),
      color: ColorUtility.black,
      borderColor: ColorUtility.black,
      selectedColor: ColorUtility.black,
      selectedBorderColor: ColorUtility.black,
      hoverColor: ColorUtility.transparent,
      fillColor: ColorUtility.transparent,
      children: buttonsChildren,
    );
  }

  List<Widget> get buttonsChildren {
    return [
      IconUtiliity.removingIcon,
      Obx((() => Text(product.isInMainPage.value == true
          ? product.number.value.toString()
          : product.numberInShoppingCart.value.toString()))),
      IconUtiliity.addingIcon
    ];
  }
}
