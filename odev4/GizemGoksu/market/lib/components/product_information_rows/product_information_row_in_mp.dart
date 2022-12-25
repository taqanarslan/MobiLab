import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/components/buttons/custom_button.dart';
import 'package:market/models/product_class.dart';
import 'package:market/components/buttons/my_toggle_buttons.dart';
import '../../models/button_class.dart';
import '../../controllers/controller.dart';
import 'package:market/core/base/util/base_utility.dart';
class ProductInformationRowInMP extends StatelessWidget { //ana sayfadaki ürün bilgi satırı
  ProductInformationRowInMP({super.key, required this.product});
  Controller controller = Get.find();
  Product product;
  late Button buttonAddToSC = Button(box: BoxUtility.addToSCBox,function: (() => controller.addShoppingCart(product)),child: const Text('Sepete Ekle'),);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: bigInformationBox(informationRow(customImage(product.assetName,110,150),informationColumn())),
    );
  }

  Center informationColumn() {
    return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                myTextWidget(product.name, ColorUtility.black, 12),
                myTextWidget('Birim Fiyatı: ${product.price.toString()} TL',ColorUtility.black,12),
                IncreasingDecreasingRow(product: product),
                CustomButton(button: buttonAddToSC)
              ],
            ),
          );
  }
}

