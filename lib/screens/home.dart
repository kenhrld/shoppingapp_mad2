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
        backgroundColor: Color.fromRGBO(238, 238, 238, 1),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Page3()));
              },
              icon: Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(238, 238, 238, 1),
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
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Take a look at what’s new, right now.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
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
                          '../assets/images/iphone.png',
                          width: 70.0,
                          height: 70.0,
                        )),
                    Text("Iphone")
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          '../assets/images/apwatch.png',
                          width: 70.0,
                          height: 70.0,
                        )),
                    Text("Apple Watch")
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
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        '../assets/Images/ip15prom.png',
                        width: 60,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Iphone 15 pro",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "70990",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.star),
                                color: Colors.white,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.star),
                                color: Colors.white,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.star),
                                color: Colors.white,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.star_half_outlined),
                                color: Colors.white,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.star_outline),
                                color: Colors.white,
                              ),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => product()));
                              },
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.shopping_cart,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        "Add to cart",
                                        style: TextStyle(color: Colors.black),
                                      ),
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
                          child: Icon(Icons.favorite, color: Colors.red),
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
                        '../assets/images/ip15pro.png',
                        width: 70.0,
                        height: 70.0,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        '../assets/images/ip14.png',
                        width: 70.0,
                        height: 70.0,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        '../assets/images/ip11.png',
                        width: 70.0,
                        height: 70.0,
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
