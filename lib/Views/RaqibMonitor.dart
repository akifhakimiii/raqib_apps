import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class RaqibMonitor extends StatefulWidget {
  @override
  _RaqibMonitorState createState() => _RaqibMonitorState();
}

class _RaqibMonitorState extends State<RaqibMonitor> {
  @override
  Widget build(BuildContext context) {
       return new Scaffold
    (
      body: Container(
        decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.purple[400], Colors.purple[300], Colors.purple[200], Colors.purple[100]])),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0,bottom: 5.0),
              child: Text(
                'Monitor',
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Oxanium',
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                  )
              ),
            ),
            new Container
            (
              
            ),
          ],
        ),
      )
    );
  }
}