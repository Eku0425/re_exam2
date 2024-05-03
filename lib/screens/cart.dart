import 'package:flutter/material.dart';

import '../utils/global.dart';
import '../utils/list.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        title: Text('cart screen',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(
                  cartList.length,
                      (index) => cart(img: cartList[index]['img'], index: index),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                for(int i=0;i<cartList.length;i++)
                {
                  qty = (qty+cartList[i]['qty']).toInt();
                  amount = amount+cartList[i]['price']*cartList[i]['qty'];

                }
                total=(amount*13)/100+amount;


                Navigator.of(context).pushNamed('/check');
              },);
            },
            child: Container(
              alignment: Alignment.center,
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue.shade500,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text('Checkout',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
          ),

        ],
      ),
    );
  }

  Column cart({required String img, required int index}) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 200,
              width: 380,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue.shade100,
                  Colors.blue,
                ]),
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(img),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 340, top: 160),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                cartList.removeAt(index);
                              });
                            },
                            child: Icon(
                              Icons.delete,
                              size: 30,
                              color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250, top: 10),
                        child: Text(
                          cartList[index]['name'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250, top: 40),
                        child: Text(
                          cartList[index]['price'].toString() + '/-',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ],
                  ),

                ],

              ),

            ),

          ],
        ),

      ],
    );
  }
}






