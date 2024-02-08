import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage('../assets/images/1.jpg'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../assets/images/1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            Positioned(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      '../assets/images/1.jpg',
                      height: 150,
                      width: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 50,
                    child: Text(
                      "Quantity",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.brown,
                      ),
                    ),
                    width: 200,
                    height: 30,
                  ),
                  Positioned(
                    top: 80,
                    right: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 20,
                    child: Text(
                      '₱175',
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('../assets/images/1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(16),
                    leading: SizedBox(
                      child: Image.asset(
                        '../assets/images/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      'Vanilla Frappuccino',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    subtitle: Text(
                      '175',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    trailing: Text(
                      '1x',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset('../assets/images/1.jpg'),
                    contentPadding: EdgeInsets.all(16),
                    title: Text(
                      'Caramel Frappuccino',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    subtitle: Text(
                      '175',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    trailing: Text(
                      '1x',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(20),
                    leading: Image.asset('../assets/images/1.jpg'),
                    title: Text(
                      'Mocha Frappuccino',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    subtitle: Text(
                      '175',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    trailing: Text(
                      '1x',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(20),
                    leading: Text(
                      '3 items                                           ₱525',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Buy now',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
