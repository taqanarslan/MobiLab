import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/core/base/util/base_utility.dart';
import 'package:market/models/button_class.dart';
import 'package:market/components/buttons/custom_button.dart';
import 'package:market/product/appbar.dart';
import 'package:market/controllers/controller.dart';
import 'package:market/components/product_information_rows/product_information_row_in_sc.dart';
class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});
  @override
  Widget build(BuildContext context) {
    Controller controller = Get.find();
    Button completeShoppingButton=Button(box: BoxUtility.completeShoppingBox, function: (() {}), child: myTextWidget('Alışverişi Tamamla',ColorUtility.black,15));
    return Scaffold(
      backgroundColor: ColorUtility.orangeBackground,
      appBar: PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width,50),child: MyAppBar(whereItIs: 'Shopping cart',otherPage: 'Main page',),),
      body: totalPriceAndProductsInSC(controller, completeShoppingButton)
    );
  }

  Column totalPriceAndProductsInSC(Controller controller, Button completeShoppingButton) {
    return Column(
      children: [
        Obx((() => myTextWidget('Toplam: ${controller.sum.value.toString()} TL',ColorUtility.orange,20))),
        Padding(padding: const EdgeInsets.all(5),child: CustomButton(button: completeShoppingButton)),
        productsInShoppingCart(controller)
      ],
    );
  }

  Expanded productsInShoppingCart(Controller controller) {
    return Expanded(
          child: ListView.builder(
            itemCount: controller.productsInShoppingCart.length,
            itemBuilder: ((context, index) => ProductInformationRowInSC(product: controller.productsInShoppingCart[index]))),
        );
  }
}
