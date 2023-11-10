import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_d_anurag_17864/Model/product_model.dart';

class CartController extends GetxController {
  RxString username = "".obs;
  RxList cartProducts = [].obs;

  addToCart({required Product product}) {
    cartProducts.add(product);
    update();
  }

  removeFromCart({required Product product}) {
    cartProducts.remove(product);
    update();
  }
}
