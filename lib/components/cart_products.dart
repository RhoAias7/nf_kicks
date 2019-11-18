import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Product_in_cart = [
    {
      "name": "Coat",
      "picture":
          "http://1.bp.blogspot.com/-Ir7NdQlQWo0/T-oGSXoc_aI/AAAAAAAAA2Y/z-PYU2phVEQ/s1600/Hollywood+models+(70).jpg",
      "old_price": 120,
      "price": 60,
      "size": "S",
      "color": "pink",
      "quantity": "1",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Text("aa");
      },
      itemCount: 3,
    );
  }
}
