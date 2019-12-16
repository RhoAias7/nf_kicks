import 'package:flutter/material.dart';
import 'package:nf_kicks/components/products.dart';
import 'package:nf_kicks/screens/checkout_screen.dart';

class ProductScreen extends StatefulWidget {
  static const id = 'product_screen';

  ProductScreen({Key key, this.title, this.image, this.price})
      : super(key: key);

  final String title;
  final String image;
  final double price;

  @override
  ProductScreenState createState() => ProductScreenState();
}

class ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        flexibleSpace: Image(
          image: AssetImage('assets/background.jfif'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      //The whole application area
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Image.network(
                    widget.image,
                  ),
                  //This
                  // should be a paged
                  // view.
                ],
              ),
            ),
            spaceVertical(20),
            //Center Items
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                      " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ",
                      textAlign: TextAlign.justify,
                      style: TextStyle(height: 1.5, color: Colors.white),
                    ),
                    spaceVertical(50),
                    colorWidget(),
                  ],
                ),
              ),
            ),

            //Bottom Button
            purchase()
          ],
        ),
      ),
    );
  }

  Widget colorWidget() {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "COLOR",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              spaceVertical(10),
              Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        maxRadius: 18,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        maxRadius: 18,
                        backgroundColor: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        maxRadius: 18,
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        maxRadius: 18,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          sizeWidget()
        ],
      ),
    );
  }

  Widget sizeWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Size",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        spaceVertical(10),
        Container(
          width: 70,
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Text(
            "45.5",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        )
      ],
    );
  }

  Widget purchase() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            child: Text(
              "Buy now",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, CheckoutScreen.id);
            },
          ),
          Text(
            r"$" + widget.price.toString(),
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w100,
                color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget spaceVertical(double size) {
    return SizedBox(
      height: size,
    );
  }

  Widget spaceHorizontal(double size) {
    return SizedBox(
      width: size,
    );
  }
}
