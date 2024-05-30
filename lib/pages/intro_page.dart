import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/component/c_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text('Intro Page'),centerTitle: true,),
      body: Center(
        child: Container(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //icon
               Icon(Icons.shopping_bag,size: 72,color: Theme.of(context).colorScheme.inversePrimary,),
              const SizedBox(height: 10,),
              //title
          const Text('Minimal Shop',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              //subtitle
                const Text('Best shoping deal for you,get your freedom'),
                const SizedBox(height: 5,),
              //arrow button for navigation to shop page
              MyButton(child: Icon(Icons.arrow_forward),
               onTap:()=> Navigator.pushNamed(context, '/shoppage'))
            ],
          ),
        ),
      ),
    );
  }
}