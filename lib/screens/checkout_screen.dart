import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CheckoutScreen extends StatefulWidget {
  static const id = 'checkout_screen';

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Comfirmed"),
        centerTitle: true,
        flexibleSpace: Image(
          image: AssetImage('assets/background.jfif'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F5%2F50%2FYes_Check_Circle.svg%2F1024px-Yes_Check_Circle.svg.png&f=1&nofb=1",
                        height: 160,
                      ),
                      Text("Your Order will be ready in 10mins", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(

                      fit: BoxFit.cover,
                      image: NetworkImage("https://images.unsplash.com/photo-1570910492786-621094972774?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
                    )
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: QrImage(
                    backgroundColor: Colors.white,
                    data: "1234567890",
                    version: QrVersions.auto,
                    size: 400.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text("Scan this at the collection point", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),

                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.green,
                  child: FlatButton(
                    child: Text("Order ready Button"),
                    onPressed: () {
                      Alert(
                        context: context,
                        type: AlertType.success,
                        title: "Order Ready",
                        desc: "Your order is ready!",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "Ok",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            width: 120,
                          )
                        ],
                      ).show();
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.green,
                  child: FlatButton(
                    child: Text("Success button"),
                    onPressed: () {
                      Alert(
                        context: context,
                        type: AlertType.success,
                        title: "Success",
                        desc: "Order verified successfully",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "Ok",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            width: 120,
                          )
                        ],
                      ).show();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
