import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class RaqibContact extends StatefulWidget {
  @override
  _RaqibContactState createState() => _RaqibContactState();
}

class _RaqibContactState extends State<RaqibContact> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
    (
     body: new Center
     (
       child: new Text("This is contact page"),
     ), 
    );
  }
}
Widget build(BuildContext context){
    final TextStyle textstyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.purple[50],
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              MdiIcons.accountDetailsOutline,
              size: 150.0,
              color: textstyle.color,
              ),
          ],
        ),
      ),
    );
}