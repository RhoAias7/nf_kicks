import 'package:flutter/material.dart';
import 'package:nf_kicks/screens/store_screen.dart';

class LoginScreen extends StatefulWidget {
  static const id = "login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jfif"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 410,
                    child: Image.asset("assets/logo.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 70,
                                child: Text("Email"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50.0, right: 20.0),
                                child: Container(
                                  width: 1,
                                  height: 30,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Please enter an email';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 70,
                                child: Text("Password"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50.0, right: 20.0),
                                child: Container(
                                  width: 1,
                                  height: 30,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  obscureText: true,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Please enter a password.';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Center(
                                    child: Text(
                                        "Registration confirmation email will be sent to you.")),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FlatButton(
                            color: Colors.black,
                            onPressed: () {
                              Navigator.pushNamed(context, StoreScreen.id);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Register',
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: () {}, child: Text("Log In",),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
