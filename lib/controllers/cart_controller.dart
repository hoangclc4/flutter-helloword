import 'package:get/get.dart';
import 'package:helloworld/models/product.dart';

class CartController extends GetxController {
  var cartItem = <Product>[].obs;

  addToCart(Product product) {
    cartItem.add(product);
  }

  double get totalAmount {
    double total = 0;
    for (int i = 0; i < cartItem.length; i++) {
      total += cartItem[i].price;
    }
    return total;
  }
}
