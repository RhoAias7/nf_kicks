import 'package:flutter/material.dart';

List<Category> categoriesList = [
  Category(hashtag: "#JordanMars270"),
  Category(hashtag: "#JordanWhyNot?"),
  Category(hashtag: "#AirJordan1Mid"),
  Category(hashtag: "#JordanJumpmanDiamondMid"),
  Category(hashtag: "#JordanMaxAura"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                color: Colors.white,
                child: Text(categoriesList[index].hashtag),
                onPressed: () {},
              ),
            );
          }),
    );
  }
}

class Category {
  final String hashtag;

  Category({this.hashtag});
}
