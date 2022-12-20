import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/components/custom_button.dart';
import 'package:market/classes/product_class.dart';
import 'package:market/components/increasing_decreasing_row.dart';
import '../classes/button_class.dart';
import '../controllers/controller.dart';
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
      child: bigInformationBox(informationRow(customImage(product.assetName),informationColumn())),
    );
  }

  Center informationColumn() {
    return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(product.name,style: const TextStyle(fontSize: 12),),
                Text('Birim Fiyatı: ${product.price.toString()} TL',style: const TextStyle(fontSize: 12),),
                IncreasingDecreasingRow(product: product),
                CustomButton(button: buttonAddToSC)
              ],
            ),
          );
  }
}

