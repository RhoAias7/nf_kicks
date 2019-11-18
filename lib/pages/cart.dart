import 'package:flutter/material.dart';

import 'package:nf_kicks/components/cart_products.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TODO 3 - Cool feature
        elevation: 6.1,
        title: Text("Cart"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              print("clicked search");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              print("clicked cart");
            },
          ),
        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total: "),
                subtitle: Text("\$100"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                child: Text("Pay now"),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
