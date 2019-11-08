import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.category,
            ),
            onPressed: () {
              print("clicked search");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.star,
            ),
            onPressed: () {
              print("clicked search");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.card_giftcard,
            ),
            onPressed: () {
              print("clicked search");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.monetization_on,
            ),
            onPressed: () {
              print("clicked search");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tag_faces,
            ),
            onPressed: () {
              print("clicked search");
            },
          ),
        ],
      ),
    );
  }
}
