import 'package:raqib_apps/Models/RaqibHeartData.dart';
import 'package:flutter/material.dart';

class HeartTile extends StatelessWidget {

  final HeartData heart;
  HeartTile({ this.heart });

  @override
  Widget build(BuildContext context) {
    return Column(
children: <Widget>[
 Text(
   '${heart.minimum}',
textAlign: TextAlign.center, 
   style: TextStyle(fontSize: 28, fontFamily: 'Oxanium'),
  ),
 SizedBox(height:2),
  Text(
    "MINIMUM",
   textAlign: TextAlign.center, 
  style: TextStyle(fontSize: 10,
  fontWeight: FontWeight.bold),
    ),
  ],
 );
  }
}