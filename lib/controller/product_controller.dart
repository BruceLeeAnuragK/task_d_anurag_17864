
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:task_d_anurag_17864/helper/api_helper.dart';

class ProductController extends GetxController {
  RxList allProduct =[].obs;
  
  addProducts()
  {
    allProduct.add(APIHelper.apiHelper.getProduct());
    update();
  }
}