import 'package:flutter/material.dart';
import 'package:nf_kicks/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Coat",
      "picture":
          "http://1.bp.blogspot.com/-Ir7NdQlQWo0/T-oGSXoc_aI/AAAAAAAAA2Y/z-PYU2phVEQ/s1600/Hollywood+models+(70).jpg",
      "old_price": 120,
      "price": 60,
    },
    {
      "name": "One-Piece",
      "picture":
          "http://blog.modelmanagement.com/library/uploads/summer.campagne2012.aleesandra.ambrosia.jpg",
      "old_price": 120,
      "price": 60,
    },
    {
      "name": "Blazer",
      "picture": "http://wallpapershome.com/images/pages/pic_hs/3397.jpg",
      "old_price": 120,
      "price": 60,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: product_list.length,
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Single_product(
      {this.product_name,
      this.product_picture,
      this.product_old_price,
      this.product_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                      product_detail_name: product_name,
                      product_detail_new_price: product_price,
                      product_detail_old_price: product_old_price,
                      product_detail_picture: product_picture,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(product_name),
                    ),
                    Text("\$${product_price}"),
                  ],
                ),
              ),
              child: Image.network(
                product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
