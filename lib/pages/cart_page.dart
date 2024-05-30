

import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/component/c_button.dart';
import 'package:minimal_ecommerce/model/m_product.dart';
import 'package:minimal_ecommerce/model/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeItemFromCart(BuildContext context ,Product product){
       showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Remove item from your cart?'),
        actions: [
          //cencle button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text('cencle'),
          ),

          //yes button
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<Shop>().removeFromCart(product);
            },
            child: Text('yes'),
          )
        ],
      ),
    );
  }

  void onTap(BuildContext context){
    showDialog(context: context, builder:(context) => AlertDialog(
      content: Text('user want to pay ,connect with payment backend'),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    final cart=context.watch<Shop>().cart;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text('Cart Page'),
      centerTitle: true,
      elevation: 0,
      backgroundColor:Colors.transparent,
      ),
      body: Column(
        children: [
          //cart list
          Expanded(child:cart.isEmpty?Center(child: Text('Your cart is empty'),) :ListView.builder(
          itemCount: cart.length,
          itemBuilder: (BuildContext context, int index) {
        
            //get the cart list
            final item=cart[index];
        
            //build the ui
            return ListTile(
              title: Text(item.name),
              subtitle: Text(item.price),
              trailing: IconButton(onPressed: ()=>removeItemFromCart(context,item), icon: Icon(Icons.remove)),
            );
          },
        ),),

        

        //pay button
        Padding(
          padding: const EdgeInsets.all(25),
          child: MyButton(child: Text('Pay Now'), onTap: ()=>onTap(context)),
        )
        
        ],
      ),
    );
  }
}