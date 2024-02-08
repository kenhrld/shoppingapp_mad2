import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ClipRRect(
                      child: Container(
                        color: Colors.black,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          child: Container(
                            padding: EdgeInsets.all(30),
                            width: double.maxFinite,
                            color: Colors.white,
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
                                          Radius.circular(100.0),
                                        ),
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.black,
                                        ),
                                      ),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                              builder: (_) => Page3(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "Add to cart",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: Size(300, 40),
                                          backgroundColor:
                                              Color.fromRGBO(151, 151, 151, 1),
                                        ),
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
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.all(20),
                            leading:
                                Image.asset('../assets/images/ip15prom.png'),
                            title: Text(
                              'IPhone 15 pro max',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            subtitle: Text(
                              '7990',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            trailing: Text(
                              '1x',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(20),
                            leading: Image.asset('../assets/images/ip11.png'),
                            title: Text(
                              'IPhone 11',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            subtitle: Text(
                              '29000',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            trailing: Text(
                              '1x',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.black,
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text(
                      "3 items",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "70990",
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                                color: Colors.black,
                                child: Text(
                                  "Buy now",
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
