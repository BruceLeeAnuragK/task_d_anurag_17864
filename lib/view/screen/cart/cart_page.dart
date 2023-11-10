import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_d_anurag_17864/controller/cart_controller.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    GetxController controller = Get.put(CartController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart Items",
          style: GoogleFonts.sofia(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
