import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: "https://i0.wp.com/sreditingzone.com/wp-content/uploads/2018/07/fire-png-2.png?resize=1024%2C1024&ssl=1",
            image_caption: "fire",
          ),          Category(
            image_location: "https://i0.wp.com/sreditingzone.com/wp-content/uploads/2018/07/fire-png-2.png?resize=1024%2C1024&ssl=1",
            image_caption: "fire",
          ),          Category(
            image_location: "https://i0.wp.com/sreditingzone.com/wp-content/uploads/2018/07/fire-png-2.png?resize=1024%2C1024&ssl=1",
            image_caption: "fire",
          ),          Category(
            image_location: "https://i0.wp.com/sreditingzone.com/wp-content/uploads/2018/07/fire-png-2.png?resize=1024%2C1024&ssl=1",
            image_caption: "fire",
          ),          Category(
            image_location: "https://i0.wp.com/sreditingzone.com/wp-content/uploads/2018/07/fire-png-2.png?resize=1024%2C1024&ssl=1",
            image_caption: "fire",
          ),          Category(
            image_location: "https://i0.wp.com/sreditingzone.com/wp-content/uploads/2018/07/fire-png-2.png?resize=1024%2C1024&ssl=1",
            image_caption: "fire",
          ), Category(
            image_location: "https://i0.wp.com/sreditingzone.com/wp-content/uploads/2018/07/fire-png-2.png?resize=1024%2C1024&ssl=1",
            image_caption: "fire",
          ), Category(
            image_location: "https://i0.wp.com/sreditingzone.com/wp-content/uploads/2018/07/fire-png-2.png?resize=1024%2C1024&ssl=1",
            image_caption: "fire",
          ), Category(
            image_location: "https://i0.wp.com/sreditingzone.com/wp-content/uploads/2018/07/fire-png-2.png?resize=1024%2C1024&ssl=1",
            image_caption: "fire",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  //TODO put in it's own class
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.network(image_location, width: 100, height: 80),
            subtitle: Container(alignment: Alignment.topCenter,child: Text(image_caption)),
          ),
        ),
      ),
    );
  }
}
