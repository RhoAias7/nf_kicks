import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselHome extends StatefulWidget {
  @override
  _CarouselHomeState createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage("assets/video2.gif"),
            AssetImage("assets/video1.gif"),
            AssetImage("assets/video3.gif"),
          ],
          autoplay: true,
          animationDuration: Duration(milliseconds: 1000),
          animationCurve: Curves.easeIn,
          dotBgColor: Colors.transparent,
        ),
      ),
    );
  }
}
