import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/model/m_product.dart';

class Shop extends ChangeNotifier{
  //list of product for sell
  List<Product> _shop = [
    Product(imagepath: 'image/0.png',name: 'Product 01', description: 'description 01', price: '39'),
    Product(imagepath: 'image/2.png',name: 'Product 02', description: 'description 02', price: '62'),
    Product(imagepath: 'image/3.png',name: 'Product 03', description: 'description 03', price: '59'),
    Product(imagepath: 'image/4.png',name: 'Product 04', description: 'description 04', price: '99'),
  ];

  //list of product in user cart
  List<Product>_cart=[];

  //get the product for sell
  List<Product>get shop=>_shop;

  //get the user cart
  List<Product>get cart=>_cart;

  //add item in user cart
  void addTOCart(Product item){
    _cart.add(item);
    notifyListeners();
  }

  //remove item from user cart
  void removeFromCart(Product item){
    _cart.remove(item);
    notifyListeners();
  }

}
