import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/components/buttons/my_toggle_buttons.dart';
import 'package:market/core/base/util/base_utility.dart';
import 'package:market/models/product_class.dart';
import '../../controllers/controller.dart';
class ProductInformationRowInSC extends StatelessWidget { //sepetteki ürün bilgi satırı
  ProductInformationRowInSC({super.key, required this.product});
  Controller controller = Get.find();
  Product product;
  @override
  Widget build(BuildContext context) {
    return Obx(
      (() =>  Visibility(
        visible: product.isInShoppingCart.value == true ? true : false,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: bigInformationBox(informationRow(customImage(product.assetName,110,150),informationColumn())),
        ),
      ))
     );
  }

  Center informationColumn() { //ana sayfa ve sepet için ayrı ayrı product information row yapmamın sebebi informationColumn'larının farklı olması ve burada parent widget olarak visibility bulunması
    return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myTextWidget(product.name,ColorUtility.black,12),
                    IncreasingDecreasingRow(product: product),
                    myTextWidget('Ürün Total: ${(product.numberInShoppingCart*product.price).toString()} TL',ColorUtility.black,12),
                    IconButton(onPressed: (() => controller.removeFromShoppingCart(product)),icon: IconUtiliity.deletingIcon,),
                  ],
                ),
              );
  }
}