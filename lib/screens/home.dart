import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:re_exam2/utils/global.dart';

import '../utils/list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        title: Text('Home Page',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                      cartList.add;
                  Navigator.of(context).pushNamed('/cart');
                });
              },
              child: Icon(
                Icons.add_shopping_cart,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              width: 400,
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/beenr2.jpeg'),
                ),
              ),
            ),
            Wrap(

              direction: Axis.horizontal,
              children: [
                ...List.generate(
                  proList.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectIndex = index;
                        Navigator.of(context).pushNamed('/Detail');
                      });
                    },
                    child: box1(
                         img: proList[index]['img'],
                         name: proList[index]['name'],
                         price: proList[index]['price'],
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container box1(
      {required String img, required String name, required int price}) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 220,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 150,
        ),
        child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue.shade500,
          ),
          child: Column(
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '$price' + '/-',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
