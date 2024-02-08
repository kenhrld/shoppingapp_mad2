import 'package:assignment1_snackshoppingapp/screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class product extends StatelessWidget {
  const product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 152, 89, 1),
      ),
      body: Container(
        color: Color.fromRGBO(255, 153, 89, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          '../assets/images/product.png',
                          width: 300,
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gap(12),
                            Text(
                              "Dried apricots",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Artificial Selection" +
                                      " • " +
                                      "Taste sweet",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
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
                                ),
                              ],
                            ),
                            Gap(15),
                            Text(
                              "Capacity",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.white)),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Calories",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Text(
                                        "90",
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.white)),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Additive",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Text(
                                        "3%",
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.white)),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Vitamin",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Text(
                                        "8%",
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Container(
                color: Colors.black,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  child: Container(
                    padding: EdgeInsets.all(30),
                    width: double.maxFinite,
                    color: Colors.white,
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Quantity(300g)"),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(100.0)),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey,
                                    )),
                                child: ItemCount(
                                  initialValue: 1,
                                  minValue: 0,
                                  maxValue: 10,
                                  decimalPlaces: 0,
                                  color: Colors.white,
                                  onChanged: (value) {
                                    // Handle counter value changes
                                    print('Selected value: $value');
                                  },
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$9.43",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Page3()));
                                  },
                                  child: Text(
                                    "Add to cart",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(300, 40),
                                      backgroundColor:
                                          Color.fromRGBO(255, 205, 133, 1)),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite),
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              color: Colors.black,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_bag_outlined),
                    color: Colors.white,
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          '../assets/Images/1.jpg',
                          width: 25,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
