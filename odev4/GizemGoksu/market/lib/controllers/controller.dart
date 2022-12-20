import 'package:get/get.dart';
import 'package:market/classes/product_class.dart';
import 'package:market/product/pages/main_page.dart';
import 'package:market/product/pages/shopping_cart_page.dart';

class Controller extends GetxController {
  var sum = 0.obs;
  late var chocolate = Product(
    name: 'Çilekli Yoğurtlu Çikolata',
    number: 0.obs,
    numberInShoppingCart: 0.obs,
    price: 18,
    assetName: 'assets/images/çikolata.jpg',
    isInShoppingCart: false.obs,
    isInMainPage: true.obs,
  );
  late var milk = Product(
      name: 'İçim Süt 1L',
      number: 0.obs,
      numberInShoppingCart: 0.obs,
      price: 21,
      assetName: 'assets/images/sut.jpg',
      isInShoppingCart: false.obs,
      isInMainPage: true.obs);
  late var tea = Product(
    name: "Lipton Demlik Poşet Çay Yellow Label 100'lü",
    number: 0.obs,
    numberInShoppingCart: 0.obs,
    price: 82,
    assetName: 'assets/images/poset_cay.jpg',
    isInShoppingCart: false.obs,
    isInMainPage: true.obs,
  );
  late var nesquik = Product(
      name: "Nesquik Mısır Gevreği 700 G",
      number: 0.obs,
      numberInShoppingCart: 0.obs,
      price: 65,
      assetName: 'assets/images/nesquik.jpg',
      isInShoppingCart: false.obs,
      isInMainPage: true.obs);
  late var pasta = Product(
    name: "Barilla Penne Rigate (Kalem) Makarna 500 G",
    number: 0.obs,
    numberInShoppingCart: 0.obs,
    price: 19,
    assetName: 'assets/images/makarna1.jpg',
    isInShoppingCart: false.obs,
    isInMainPage: true.obs,
  );

  late List<Product> products = [chocolate, milk, tea, nesquik, pasta];
  late List<Product> productsInShoppingCart = [];

  var isSelected = [false, false, false].obs; // toggle buttons için
  var index = 0.obs; //toggle buttons için

  void toggleButtonFunction(Product product) {
    int i;
    for (int i = 0; i < 3; i++) {
      isSelected[i] = i == index.value;
    }
    if (index.value == 0) {
      decreaseProductNumber(product);
    }
    if (index.value == 2) {
      increaseProductNumber(product);
    }
  }

  void increaseProductNumber(Product product) {
    if (product.isInMainPage.value == true) { //ana sayfadaki ürün sayısını arttırmak için
      product.number.value++;
    } else {
      //sepetteki ürün sayısını arttırmak için
      product.numberInShoppingCart.value++;
      sum = sum + product.price;
    }
  }

  void decreaseProductNumber(Product product) {
    if (product.isInMainPage.value == true) { //ana sayfadaki ürün sayısını azaltmak için
      if (product.number.value > 0) product.number.value--;
    } else {
      //sepetteki ürün sayısını azaltmak için
      if (product.numberInShoppingCart.value > 0) {
        product.numberInShoppingCart.value--;
        sum = sum - product.price;
      }
      if (product.numberInShoppingCart.value == 0) {
        product.isInShoppingCart.value = false;
        product.isInMainPage.value = true;
        productsInShoppingCart.remove(product);
      }
    }
  }

  void addShoppingCart(Product product) {
    //ana sayfada istenilen ürün miktarını sepete ekleme fonksiyonu
    if (product.number.value > 0) {
      product.isInShoppingCart.value = true;
      product.numberInShoppingCart = product.numberInShoppingCart + product.number.value;
      sum = sum + product.number.value * product.price;
      if (productsInShoppingCart.contains(product) == false) productsInShoppingCart.add(product);
    }
  }

  void removeFromShoppingCart(Product product) {
    //sepetten ürünü kaldırma fonksiyonu
    product.isInShoppingCart.value = false;
    product.isInMainPage.value = true;
    sum = sum - product.numberInShoppingCart.value * product.price;
    product.numberInShoppingCart.value = 0;
    productsInShoppingCart.remove(product);
  }

  void passingToShoppingCart() { //sepet sayfasına geçiş fonksiyonu
    int i;
    for (i = 0; i < productsInShoppingCart.length; i++) {
      productsInShoppingCart[i].isInMainPage.value = false;
      productsInShoppingCart[i].isInShoppingCart.value = true;
    }
    Get.to(() => ShoppingCartPage());
  }

  void passingBetweenPages(String page) { //sayfalar arası geçiş fonksiyonu
    int i;
    if (page == 'Main page') {
      for (i = 0; i < products.length; i++) {
        products[i].isInMainPage.value = true;
        products[i].isInShoppingCart.value = false;
      }
      Get.to(() => MainPage());
    } else {
      passingToShoppingCart();
    }
  }
}
