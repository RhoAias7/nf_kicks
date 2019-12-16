import 'package:flutter/material.dart';
import 'package:nf_kicks/screens/checkout_screen.dart';
import 'package:nf_kicks/screens/product_screen.dart';
import 'package:nf_kicks/screens/store_screen.dart';

import 'screens/login_screen.dart';

void main() => runApp(NfKicks());

class NfKicks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        StoreScreen.id: (context) => StoreScreen(),
        ProductScreen.id: (context) => ProductScreen(),
        CheckoutScreen.id: (context) => CheckoutScreen(),
      },
    );
  }
}
