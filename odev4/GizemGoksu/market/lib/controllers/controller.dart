import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/models/product_class.dart';
import 'package:market/core/base/util/base_utility.dart';
import 'package:market/core/base/users_data/user_list.dart';
import 'package:market/product/pages/login_page.dart';
import 'package:market/product/pages/main_page.dart';
import 'package:market/product/pages/shopping_cart_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Controller extends GetxController {
  var sum = 0.obs;
  late var chocolate = Product(
    name: 'Çilekli Yoğurtlu Çikolata',
    number: 0.obs,
    numberInShoppingCart: 0.obs,
    price: 18,
    assetName: 'assets/images/çikolata.jpg',
    isInShoppingCart: false.obs, //uygulama ilk açıldığı zaman sepette hiçbir ürün olmadığı için her bir ürünün isInShoppingCart değeri false
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

  var nameController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var login = false.obs;
  var falsePassword = false.obs;

  void toggleButtonFunction(Product product) {
    int i;                                                    //index bizim tıkladığımız butonun index'i
    for (i = 0; i < 3; i++) isSelected[i] = i == index.value; //bu for döngüsü sayesinde seçili button'ın isSelected değeri true oluyor
    if (index.value == 0) decreaseProductNumber(product);
    if (index.value == 2) increaseProductNumber(product);
  }

  void increaseProductNumber(Product product) {
    if (product.isInMainPage.value == true) {
      //ana sayfadaki ürün sayısını arttırmak için
      product.number.value++;
    } else {
      //sepetteki ürün sayısını arttırmak için
      product.numberInShoppingCart.value++;
      sum = sum + product.price;
    }
  }

  void decreaseProductNumber(Product product) {
    if (product.isInMainPage.value == true) {
      //ana sayfadaki ürün sayısını azaltmak için
      if (product.number.value > 0) product.number.value--;
    } else {
      //sepetteki ürün sayısını azaltmak için
      if (product.numberInShoppingCart.value > 0) {
        product.numberInShoppingCart.value--;
        sum = sum - product.price;
      }
      if (product.numberInShoppingCart.value == 0) {
        product.isInShoppingCart.value = false;
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
      if (productsInShoppingCart.contains(product) == false) productsInShoppingCart.add(product); //bu if'i ana sayfada aynı üründen sepete ekleme yaparsak aynı ürün sepette ayrı ayrı gözükmesin diye koydum
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

  void passingToShoppingCart() {
    //sepet sayfasına geçiş fonksiyonu
    int i;
    for (i = 0; i < productsInShoppingCart.length; i++) {
      productsInShoppingCart[i].isInShoppingCart.value = true;
      productsInShoppingCart[i].isInMainPage.value = false;
    }
    Get.to(() => ShoppingCartPage());
  }

  void passingBetweenPages(String page) {
    //sayfalar arası geçiş fonksiyonu
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

  void loginFunction() {
    login.value = false;
    falsePassword.value = false;
    int i = 0;
    for (i = 0; i < users.length; i++) {
      if (users[i].name == nameController.value.text) {
        if (users[i].password == passwordController.value.text) {
          login.value = true;
          setUser();
          Get.to(() => MainPage());
        } else
          falsePassword.value = true;
      }
    }
    if (login.value == false) showWarningMessage();
  }

  void logoutFunction() {
    //bu fonksiyonda kullanıcı çıkış yaptıktan sonra başka kullanıcı giriş yaptığı zaman önceki kullanıcının verileri kalmasın diye observable verileri ilk baştaki değerlerine çevirdim
    int i = 0;
    productsInShoppingCart.clear();
    for (i = 0; i < products.length; i++) {
      products[i].number.value = 0;
      products[i].numberInShoppingCart.value = 0;
      products[i].isInMainPage.value = true;
      products[i].isInShoppingCart.value = false;
    }
    sum.value = 0;
    Get.to(() => LoginPage());
  }

  Future<void> setUser() async {
    final SharedPreferences prefName = await SharedPreferences.getInstance();
    final SharedPreferences prefPassword = await SharedPreferences.getInstance();
    prefName.setString('Username', nameController.value.text);
    prefPassword.setString('Password', passwordController.value.text);
  }

  Future<void> getUser() async {
    final SharedPreferences prefName = await SharedPreferences.getInstance();
    final SharedPreferences prefPassword = await SharedPreferences.getInstance();
    nameController.value.text = prefName.getString('Username') ?? "";
    passwordController.value.text = prefPassword.getString('Password') ?? "";
  }

  showWarningMessage() => Get.dialog(AlertDialog(
        title: myTextWidget("Uyarı", ColorUtility.black, 20),
        content: Text(falsePassword.value == true
            ? 'Şifre yanlış.'
            : 'Böyle bir kullanıcı bulunmamaktadır.'),
        actions: [
          TextButton(onPressed: () => Get.back(), child: const Text('Tamam'))
        ],
      ));
}
