import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:raqib_apps/Views/RaqibTodayPedo.dart' ;
import 'package:raqib_apps/Views/RaqibDailyPedo.dart' ;
import 'package:raqib_apps/Views/RaqibWeeklyPedo.dart' ;


class RaqibSleep extends StatefulWidget {
  @override
  _RaqibSleepState createState() => _RaqibSleepState();
}
class _RaqibSleepState extends State<RaqibSleep> with SingleTickerProviderStateMixin {

  Future<FirebaseUser> user;
  TabController _controller;
  @override
  void initState(){
    _controller = new TabController(length: 3, vsync: this);
    user = FirebaseAuth.instance.currentUser();
    super.initState();
    
      
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
   Widget build(BuildContext context) {
    return new Scaffold
    (
      body: StreamBuilder
      (
        stream: Firestore.instance.collection('RaqibStep').snapshots(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
          return Text('Loading data.. Please Wait..');
      return Container(
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
                'Sleep',
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
              child: new Column
              (
                children: <Widget>
                [
                  
                ],
                ),
            ),
          ],
        ),
        
      );
        },
      )
    );
  }
}