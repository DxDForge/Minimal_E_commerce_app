import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/model/shop.dart';
import 'package:minimal_ecommerce/pages/cart_page.dart';
import 'package:minimal_ecommerce/pages/shop_page.dart';
import 'package:minimal_ecommerce/pages/intro_page.dart';
import 'package:minimal_ecommerce/theme/light.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: light,
      routes: {
        '/intropage': (context) => IntroPage(),
        '/shoppage': (context) => ShopPage(),
        '/cartpage': (context) => CartPage(),
      },
    );
  }


















  
}
