import 'package:flutter/material.dart';
import 'package:nf_kicks/screens/product_screen.dart';
import 'package:nfc_in_flutter/nfc_in_flutter.dart';



class PopularProducts extends StatefulWidget {
  @override
  _PopularProductsState createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  List<Product> productList = [
    Product(
        name: "Tenis Masculino Adulto",
        image:
        "https://ae01.alicdn.com/kf/H3b961b327b994e0a872c95ea639cb734Y/2018-New-Breathable-Men-Casual-Shoes-Summer-Light-Soft-Men-Sneakers-Fashion-Trainers-For-Male-Flats.jpg_640x640.jpg",
        price: 115),
    Product(
        name: "Weweya Woven",
        image:
        "https://ae01.alicdn.com/kf/HTB1MIu6cA5E3KVjSZFCq6zuzXXaD/Weweya-Woven-Men-Casual-Shoes-Breathable-Male-Shoes-Tenis-Masculino-Shoes-Zapatos-Hombre-Sapatos-Outdoor-Shoes.jpg",
        price: 110),
    Product(name: "Nike ADG",
        image: "https://ae01.alicdn.com/kf/H7587a9100854474993b0bbbf3636829fq/Men-Casual-Shoes-adult-Spring-autumn-Classic-Fashion-Male-Lace-up-Flats-Comfortable-Sneakers-3-colors.jpg_640x640.jpg",
        price: 140),
    Product(name: "Air Jordans IV RETRO",
        image: "https://ae01.alicdn.com/kf/Hbec187de5f124187b4023476a9ea097fz/Shoes-Men-Sneakers-Autumn-Ultra-Boosts-Zapatillas-Deportivas-Hombre-Man-Fashion-Breathable-Casual-Shoes-Fly-Woven.jpg_640x640.jpg",
        price: 200),
  ];

  @override
  Widget build(BuildContext context) {

    Stream<NDEFMessage> stream = NFC.readNDEF();
    stream.listen((NDEFMessage message) {
      if (message.payload.contains("Weweya")) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(title: productList[1].name, image: productList[1].image, price: productList[1].price),
          ),
        );
      } else if (message.payload.contains("Nike")) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(title: productList[2].name, image: productList[2].image, price: productList[2].price),
          ),
        );
      } else if(message.payload.contains("Jordans")){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(title: productList[3].name, image: productList[3].image, price: productList[3].price),
          ),
        );
      }
    });
    return Container(
      height: 270,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            "${productList[index].image}",
                            height: 170,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(productList[index].name),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.red,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.red,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.red,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.red,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(298)",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "\$${productList[index].price}",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductScreen(title: productList[index].name, image: productList[index].image, price: productList[index].price),
                    ),
                  );                },
              ),
            );
          }),
    );
  }
}

class Product {
  final String name;
  final String image;
  final double price;

  Product({this.name, this.image, this.price});
}
