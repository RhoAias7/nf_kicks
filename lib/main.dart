import 'package:flutter/cupertino.dart';
import 'package:nf_kicks/components/horizontal_listview.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

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
    Widget imageCarousel = new Container(
      height: 200.0,
      padding: EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
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
          dotSize: 4.0,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.white.withOpacity(0),
          animationDuration: Duration(milliseconds: 1000),
          animationCurve: Curves.easeIn,
        ),
      ),
    );
    return Scaffold(
      //TODO 1 - Overhaul App bar
      appBar: AppBar(
        //TODO 3 - Cool feature
        title: Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FlatButton(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.search),
                      Text("view 1"),
                    ],
                  ),
                  onPressed: () {
                    // something
                  },
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.nfc),
              onPressed: () {},
            ),
          ],
        ),
        elevation: 6.1,
        backgroundColor: Colors.red,
//        actions: <Widget>[
//          FlatButton(child: Container(child: Row(children: <Widget>[Icon(Icons.search), Text('mens shoes')],),), onPressed: () {},),
//          IconButton(
//            icon: Icon(
//              Icons.nfc,
//              color: Colors.white,
//            ),
//            onPressed: () {
//              print("clicked search");
//            },
//          ),
//        ],
      ),
      body: ListView(
        children: <Widget>[
          imageCarousel,
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Center(child: HorizontalList()),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.rss_feed),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
      ),
      //TODO 2 - Overhaul/remove drawer
//      drawer: Drawer(
//        child: new ListView(
//          children: <Widget>[
//            UserAccountsDrawerHeader(
//              accountName: Text('Leroy Jenkins'),
//              accountEmail: Text("leroy@wowclassic.com"),
//              currentAccountPicture: GestureDetector(
//                child: CircleAvatar(
//                  backgroundColor: Colors.white,
//                  child: Icon(
//                    Icons.person,
//                    color: Colors.black,
//                  ),
//                ),
//              ),
//              decoration: BoxDecoration(color: Colors.green),
//            ),
//            InkWell(
//              onTap: () {
//                print("Tapped Home Inkwell");
//              },
//              child: ListTile(
//                title: Text('Home page'),
//                leading: Icon(Icons.home),
//              ),
//            ),
//            Divider(),
//            InkWell(
//              onTap: () {
//                print("Tapped Home Inkwell");
//              },
//              child: ListTile(
//                title: Text('Home page'),
//                leading: Icon(Icons.home),
//              ),
//            ),
//          ],
//        ),
//      ),
    );
  }
}
