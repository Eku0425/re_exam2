import 'package:flutter/material.dart';
import 'package:re_exam2/screens/cart.dart';
import 'package:re_exam2/screens/checkout.dart';

import 'package:re_exam2/screens/detalis.dart';

import 'package:re_exam2/screens/home.dart';

void main()
{
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {

            '/':(context)=>HomePage(),
             '/home':(context)=>HomePage(),
            '/Detail':(context)=>Details(),
            '/cart':(context)=>Cart(),
            '/check':(context)=>Checkout(),




      },

    );
  }

}

