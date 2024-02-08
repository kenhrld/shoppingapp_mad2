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
        iconTheme: IconThemeData(
          color: Colors.white, // Change the color of back icon here
        ),
        backgroundColor: Color.fromRGBO(238, 238, 238, 1),
      ),
      body: Container(
        color: Color.fromRGBO(238, 238, 238, 1),
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
                          '../assets/images/ip15prom.png',
                          width: 80,
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gap(12),
                            Text(
                              "IPhone 15 pro max",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Titanum" + " • " + "USB-C",
                                  style: TextStyle(fontSize: 10),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.star),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.star),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.star),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.star_half_outlined),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.star_outline),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Gap(15),
                            Text(
                              "Specification",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    width: 1,
                                  )),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Chip",
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        "A17 Pro chip",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    width: 1,
                                  )),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Capacity",
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        "1TB",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
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
                                    width: 1,
                                  )),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Camera",
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        "48 MP",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
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
                          Text("Quantity"),
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
                                      "70990",
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
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(300, 40),
                                      backgroundColor:
                                          Color.fromRGBO(151, 151, 151, 1)),
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
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Page3()));
                    },
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
                          '../assets/Images/ip15prom.png',
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
