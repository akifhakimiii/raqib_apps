import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class RaqibReport extends StatefulWidget {
  @override
  _RaqibReportState createState() => _RaqibReportState();
}

class _RaqibReportState extends State<RaqibReport> {
  @override
 Widget build(BuildContext context) {
    new Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 20.0,
            child: new ListView(
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        new IconButton(
          icon: Icon(Icons.remove_circle),
          onPressed: () {},
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    ); 
  }
}