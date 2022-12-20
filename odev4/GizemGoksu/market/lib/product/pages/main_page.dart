import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/core/base/util/base_utility.dart';
import 'package:market/product/appbar.dart';
import 'package:market/components/product_information_row_in_mp.dart';
import '../../controllers/controller.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width,50),child: MyAppBar(whereItIs: 'Main page',otherPage: 'Shopping cart',),),
      backgroundColor: ColorUtility.orangeBackground,
      body: productsInMainPage(),
    );
  }

  SizedBox productsInMainPage() {
    return SizedBox(
          child: ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: ((context, index) => ProductInformationRowInMP(product: controller.products[index]))),
        );
  }
}
