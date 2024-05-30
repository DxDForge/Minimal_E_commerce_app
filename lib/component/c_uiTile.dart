import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minimal_ecommerce/model/m_product.dart';
import 'package:minimal_ecommerce/model/shop.dart';
import 'package:provider/provider.dart';

class UiTiles extends StatelessWidget {
  final Product product;

  const UiTiles({super.key, required this.product});

  void addToCart(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Add to your cart?'),
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
              context.read<Shop>().addTOCart(product);
            },
            child: Text('yes'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(12)),
                  width: double.infinity,
                  child: Image.asset(product.imagepath)),
            ),

            //name
            Text(
              product.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            //description of product
            Text(product.description),
            SizedBox(
              height: 25,
            ),

            //price and add button

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${product.price}', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),

                //add button
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                        onPressed: () => addToCart(context),
                        icon: Icon(Icons.add)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
