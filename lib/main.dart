import 'dart:async';

import 'package:nf_kicks/components/horizontal_listview.dart';
import 'package:nf_kicks/components/products.dart';
import 'package:flutter/material.dart';
import 'package:nfc_in_flutter/nfc_in_flutter.dart';
import 'package:carousel_pro/carousel_pro.dart';

//TODO 4 - See if the project can be modularized

void main() => runApp(
      MaterialApp(
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription<NDEFMessage> _stream;

  void _startScanning() {
    setState(() {
      _stream = NFC.readNDEF(once: true).listen((NDEFMessage message) {
        print("Read NDEF message with ${message.records.length} records");
        for (NDEFRecord record in message.records) {
          print(
              "Record '${record.id ?? "[NO ID]"}' with TNF '${record.tnf}', type '${record.type}', payload '${record.payload}' and data '${record.data}' and language code '${record.languageCode}'");
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    //TODO 5 - Should be in its own class
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          NetworkImage(
              'http://4.bp.blogspot.com/-QPW4Ji_4ANw/Uev6kdLrNxI/AAAAAAAAT_o/MNYz4oCLL_M/s1600/irina_sheik_0034.jpg'),
          NetworkImage(
              'https://wallpapershome.com/images/wallpapers/faith-picozzi-5120x2880-top-fashion-models-2015-model-red-hair-beauty-3066.jpg'),
          NetworkImage(
              'https://wallpapershome.com/images/wallpapers/ophelie-guillermand-3072x1981-top-fashion-models-model-6875.jpg'),
        ],
        autoplay: true,
        animationDuration: Duration(milliseconds: 1000),
        animationCurve: Curves.easeIn,
      ),
    );

    return Scaffold(
      //TODO 1 - Overhaul App bar
      appBar: AppBar(
        //TODO 3 - Cool feature
        elevation: 6.1,
        title: Text("Hello World"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              _startScanning();
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
      body: ListView(
        children: <Widget>[
          image_carousel,
          Padding(
            child: Text("Categories"),
            padding: EdgeInsets.all(8.0),
          ),
          HorizontalList(),
          Padding(
            child: Text("Recent Products"),
            padding: EdgeInsets.all(8.0),
          ),
          Container(
            height: 320,
            child: Products(),
          ),
        ],
      ),
      //TODO 2 - Overhaul/remove drawer
      //TODO 6 - rename classes
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Leroy Jenkins'),
              accountEmail: Text("leroy@wowclassic.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.green),
            ),
            InkWell(
              onTap: () {
                print("Tapped Home Inkwell");
              },
              child: ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                print("Tapped Home Inkwell");
              },
              child: ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
