import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_d_anurag_17864/controller/cart_controller.dart';

import '../../../controller/product_controller.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController controller = Get.arguments(ProductController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Product Details",
          style: GoogleFonts.sofia(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(controller.allProduct[index].thumbnail),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
