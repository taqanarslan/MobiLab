import 'package:get/get_rx/get_rx.dart';

class Product {
  String name;
  int price;
  RxInt number; //ana sayfada arttırılıp azaltılan ürün sayısı
  RxInt numberInShoppingCart; //sepette arttırılıp azaltılan ürün sayısı
  String assetName;
  RxBool isInShoppingCart; //sayfa geçişi sonrası ürünlerin nerede olduğunu belirtmek için kullandığım RxBool değerleri
  RxBool isInMainPage;     
  Product({
    required this.name,
    required this.number,
    required this.numberInShoppingCart,
    required this.price,
    required this.assetName,
    required this.isInShoppingCart,
    required this.isInMainPage,
  });
}
