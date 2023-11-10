import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_d_anurag_17864/view/screen/cart/cart_page.dart';
import 'package:task_d_anurag_17864/view/screen/detail/detail_screen.dart';
import 'package:task_d_anurag_17864/view/screen/home/home_page.dart';
import 'package:task_d_anurag_17864/view/screen/login/login_screen.dart';
import 'package:task_d_anurag_17864/view/screen/splash/splash_screen.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => SplashScreen(),
        ),
        GetPage(
          name: "/LoginPage",
          page: () => LoginScreen(),
        ),
        GetPage(
          name: "/HomePage",
          page: () => HomePage(),
        ),
        GetPage(
          name: "/DetailPage",
          page: () => DetailScreen(),
        ),
        GetPage(
          name: "/CartPage",
          page: () => CartPage(),
        ),
      ],
    );
  }
}
