import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Icon(Icons.category),
          Icon(Icons.star),
          Icon(Icons.card_giftcard),
          Icon(Icons.monetization_on),
          Icon(Icons.tag_faces),
        ],
      ),
    );
  }
}
