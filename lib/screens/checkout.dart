import 'package:flutter/material.dart';

import '../utils/global.dart';


class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title: Text('Total',style: TextStyle(color: Colors.blueAccent.shade100,fontSize: 25,fontWeight: FontWeight.bold),),
        leading: IconButton(
          onPressed: ()
          {
            qty=0;
            amount=0;
            total=0;
            Navigator.of(context).pop();
          },icon: Icon(Icons.check),

        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blueAccent.shade100,
          borderRadius: BorderRadius.circular(15),
        ),

        child: Row(

          children: [
            Column(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Total Amount = ${amount}',style: TextStyle(color: Colors.black,fontSize: 20,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 90),
                  child: Text('Gst = 13%',style: TextStyle(color: Colors.black,fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 90),
                  child: Text('qty = ${qty}',style: TextStyle(color: Colors.black,fontSize: 20),),
                ),

              ],

            ),


          ],

        ),


      ),

    );
  }
}



