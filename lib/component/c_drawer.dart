import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),
              ListTile(onTap: () => Navigator.pushNamed(context, '/shoppage'),
                contentPadding: EdgeInsets.only(left: 25),
                leading: Icon(
                  Icons.home,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                title: Text('Shop'),
              ),
              ListTile(onTap: () => Navigator.pushNamed(context, '/cartpage'),

                contentPadding: EdgeInsets.only(left: 25),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                title: Text('Cart'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, '/intropage'),
              contentPadding: EdgeInsets.only(left: 25),
              leading: Icon(
                Icons.exit_to_app,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text('Exit'),
            ),
          )
        ],
      ),
    );
  }
}
