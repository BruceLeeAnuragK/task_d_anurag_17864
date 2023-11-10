import 'dart:convert';

import 'package:dio/dio.dart';

import '../Model/product_model.dart';

class APIHelper {
  APIHelper._();

  static final APIHelper apiHelper = APIHelper._();
  String api = "https://dummyjson.com/products?limit=100";
  Dio dio = Dio();
  Future<List<Product>?> getProduct() async {
    Response response = await dio.get(api);
    if (response.statusCode == 200) {
      List allData = response.data['products'];
      List<Product> allProducts =
          allData.map((e) => Product.fromMap(data: e)).toList();
      print("44444444444444444444");
      print(allData);
      return allProducts;
    }
  }
}
