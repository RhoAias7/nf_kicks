import 'package:flutter/material.dart';
import 'package:nf_kicks/components/carouselHome.dart';
import 'package:nf_kicks/components/categories.dart';
import 'package:nf_kicks/components/products.dart';

class StoreScreen extends StatefulWidget {
  static const id = 'store_screen';

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NF_Kicks'),
        centerTitle: true,
        flexibleSpace: Image(
          image: AssetImage('assets/background.jfif'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            CarouselHome(),
            SizedBox(
              height: 5,
            ),
            Categories(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Popular products",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            PopularProducts(),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/background.jfif'),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                color: Colors.white,
                icon: Icon(
                  Icons.home,
                  size: 30,
                ), onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                color: Colors.white,
                icon: Icon(
                  Icons.favorite,
                  size: 30,
                ), onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                color: Colors.white,
                icon: Icon(
                  Icons.shopping_cart,
                  size: 30,
                ), onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                color: Colors.white,
                icon: Icon(
                  Icons.person,
                  size: 30,
                ), onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
