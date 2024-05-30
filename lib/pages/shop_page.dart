import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minimal_ecommerce/component/c_drawer.dart';
import 'package:minimal_ecommerce/component/c_uiTile.dart';
import 'package:minimal_ecommerce/model/m_product.dart';
import 'package:minimal_ecommerce/model/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('Shop Page'),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: ()=>Navigator.pushNamed(context,'/cartpage'),
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Icon(Icons.add_shopping_cart_rounded),
            ),
          )
        ],
      ),
      drawer: const MyDrawer(),
      body:ListView.builder(
               padding: EdgeInsets.all(15),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
      // Get the individual product
      final product = products[index];
            
      // Build the UI
      return UiTiles(product: product);
              },
            )
    );
  }
}
