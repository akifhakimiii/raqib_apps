
import 'package:flutter/material.dart';
import 'package:raqib_apps/Views/RaqibLogin.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return RaqibLogin();
    } else {
      return RaqibLogin();
    }
  }
}