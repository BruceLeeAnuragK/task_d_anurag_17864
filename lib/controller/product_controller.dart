import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:task_d_anurag_17864/helper/api_helper.dart';

import '../Model/product_model.dart';

class ProductController extends GetxController {
  RxList<Product> allProduct = <Product>[].obs;

  ProductController() {
    addProducts();
  }
  addProducts() async {
    allProduct(await APIHelper.apiHelper.getProduct());
    update();
  }
}
