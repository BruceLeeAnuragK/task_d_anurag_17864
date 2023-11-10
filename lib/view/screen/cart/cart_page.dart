import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_d_anurag_17864/Model/product_model.dart';
import 'package:task_d_anurag_17864/controller/cart_controller.dart';
import 'package:task_d_anurag_17864/helper/api_helper.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  Product product = Get.arguments as Product;
  @override
  Widget build(BuildContext context) {
    CartController controller = Get.put(CartController());

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Cart Items",
            style: GoogleFonts.sofia(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: (controller.cartProducts.isNotEmpty)
            ? ListView.builder(
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text(controller.cartProducts[index].title),
                    subtitle: Text(controller.cartProducts[index].brand),
                  ),
                ),
              )
            : Text(
                "There is no item in Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.green,
                ),
              ));
  }
}
