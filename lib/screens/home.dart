import 'dart:html';

import 'package:assignment1_snackshoppingapp/screens/cart.dart';
import 'package:assignment1_snackshoppingapp/screens/product.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, User',
                    style: TextStyle(fontSize: 16, color: Colors.purpleAccent),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "What's today taste?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            Row(children: [
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        '../assets/images/1.jpg',
                        width: 70.0,
                        height: 70.0,
                      )),
                  Text("Dried Fruit")
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        '../assets/images/1.jpg',
                        width: 70.0,
                        height: 70.0,
                      )),
                  Text("Dried Fruit")
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.search, size: 40)),
                  ],
                ),
              )
            ]),
            Gap(20),
            Container(
              height: 280,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('../assets/Images/1.jpg'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dried Appricots"),
                        Text("9.43 / 300g"),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.star)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.star)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.star)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.star_half_outlined)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.star_outline)),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => product()));
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.shopping_cart),
                                    Text("Add to cart"),
                                  ],
                                ),
                              ],
                            ))
                      ],
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      shape: const CircleBorder(),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Icon(Icons.favorite, color: Colors.pink),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      '../assets/images/1.jpg',
                      width: 70.0,
                      height: 70.0,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      '../assets/images/1.jpg',
                      width: 70.0,
                      height: 70.0,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      '../assets/images/1.jpg',
                      width: 70.0,
                      height: 70.0,
                    )),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_circle_outline))
              ]),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
