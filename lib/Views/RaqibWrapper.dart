import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raqib_apps/Models/RaqibUser.dart';
import 'package:raqib_apps/Views/RaqibAuthenticate.dart';
import 'package:raqib_apps/Views/RaqibMainPage.dart';

class Wrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return RaqibMainPage();
    }
    
  }
}
