import 'package:nf_kicks/components/horizontal_listview.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    //TODO 5 - Should be in its own class
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          NetworkImage(
              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapershome.com%2Fimages%2Fwallpapers%2Fgeorgia-may-jagger-3840x2160-top-fashion-models-2015-model-glasses-3153.jpg&f=1&nofb=1'),
          NetworkImage(
              'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.wallpapersin4k.org%2Fwp-content%2Fuploads%2F2017%2F04%2FFashion-Model-Wallpaper-4.jpg&f=1&nofb=1'),
          NetworkImage(
              'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.pixelstalk.net%2Fwp-content%2Fuploads%2F2016%2F06%2FHot-fashion-model-teresa-moore-wallpaper-hd.jpg&f=1&nofb=1'),
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
            padding: EdgeInsets.all(8.0),
          ),
          HorizontalList(),
        ],
      ),
      //TODO 2 - Overhaul/remove drawer
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
