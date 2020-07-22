import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class RaqibHome extends StatefulWidget {
  @override
  _RaqibHomeState createState() => _RaqibHomeState();
}

class _RaqibHomeState extends State<RaqibHome> {
 
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
                'Home',
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
              
              child: Column
              (
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>
                [
                  Card
                  (
                    
                    color: Colors.purple[900],
                    elevation: 24.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        
                        'Hello, Akif',
                        style: TextStyle
                        (
                          fontFamily: 'Oxanium',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color:Colors.white,
                        ),
                        textAlign: TextAlign.center,
                        ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card
              (
                color: Colors.pink[800],
                elevation: 12.0,
                child: Column
                (
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>
                  [
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:40),
                            child: IconButton
                               (
                                onPressed: (){},
                                alignment: Alignment.topCenter,
                                color: Colors.white,
                            
                                iconSize: 40,
                                icon: Icon(MdiIcons.alertBox, color: Colors.purple[900]),
                                ),
                          ),
                              VerticalDivider(width:150),
                          IconButton
                             (
                              onPressed: (){},
                              alignment: Alignment.topCenter,
                              color: Colors.red,
                              iconSize: 40,
                              icon: Icon(MdiIcons.bloodBag, color: Colors.purple[900]),
                              )
                        ],
                        
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:20),
                          child: Text('1/3/20 1:06',
                          style:TextStyle
                          (
                            fontFamily: 'Oxanium',
                            color:Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,

                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:110),
                          child: Text('121/80',
                           style:TextStyle
                          (
                            fontFamily: 'Oxanium',
                            color:Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,

                          ),),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:30),
                          child: Text('LATEST ALERT',
                          style:TextStyle
                          (
                            fontFamily: 'Oxanium',
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          )),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(left:50),
                           child: Text('BLOOD PRESSURE',
                            style:TextStyle
                          (
                            fontFamily: 'Oxanium',
                            color:Colors.orange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,

                          ),),
                         ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(left:20),
                         child: Padding(
                           padding: const EdgeInsets.only(left:40),
                           child: IconButton
                                 (
                                  onPressed: (){},
                                  alignment: Alignment.topCenter,
                                  color: Colors.red,
                                  iconSize: 40,
                                  icon: Icon(MdiIcons.heartPulse, color: Colors.purple[900]),
                                  ),
                         ),
                       ),
                              Padding(
                                padding: const EdgeInsets.only(left:155),
                                child: IconButton
                             (
                                onPressed: (){},
                                alignment: Alignment.topCenter,
                                color: Colors.red,
                                iconSize: 40,
                                icon: Icon(MdiIcons.footPrint, color: Colors.purple[900]),
                                ),
                              )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:75),
                          child: Text('95',
                           style:TextStyle
                            (
                              fontFamily: 'Oxanium',
                              color:Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,

                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:165),
                          child: Text('1072',
                           style:TextStyle
                          (
                            fontFamily: 'Oxanium',
                            color:Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,

                          ),),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:30),
                          child: Text('HEART RATE',
                           style:TextStyle
                            (
                              fontFamily: 'Oxanium',
                              color:Colors.orange,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,

                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:120),
                          child: Text('STEPS',
                           style:TextStyle
                          (
                            fontFamily: 'Oxanium',
                            color:Colors.orange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,

                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height:20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton
                               (
                                onPressed: (){},
                                alignment: Alignment.topCenter,
                                color: Colors.red,
                                iconSize: 40,
                                icon: Icon(MdiIcons.chartLine, color: Colors.purple[900]),
                                ),
                        
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('3',
                         style:TextStyle
                          (
                            fontFamily: 'Oxanium',
                            color:Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,

                          ),),
                        
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('ECG COUNTER',
                           style:TextStyle
                          (
                            fontFamily: 'Oxanium',
                            color:Colors.orange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,

                          ),),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
  
}
  



