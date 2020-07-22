import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:raqib_apps/Services/auth_services.dart';
class RaqibECG extends StatefulWidget {
  final AuthService _auth = AuthService();
  @override
  _RaqibECGState createState() => _RaqibECGState();
}

class _RaqibECGState extends State<RaqibECG> {
  Future<FirebaseUser> user;
  @override
  void initState(){
    
    user = FirebaseAuth.instance.currentUser();
    super.initState();
    
      
  }
  @override

  Widget build(BuildContext context) {
   return new Scaffold
    (
      body: StreamBuilder
      (
        stream: Firestore.instance.collection('RaqibECG').snapshots(),
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
                'Electrocardiography',
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
                children: <Widget>
                [
                  new ListTile
                  (
                    title: Text('Wed, 11 March 2020, 10:16 AM',
                    style:(TextStyle
                    (fontFamily: 'Oxanium', 
                     fontSize: 18,
                     color:Colors.white,
                     fontWeight: FontWeight.bold,
                     )
                    )
                     ),
                      onTap: ()
                                         {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)
                                            {
                                              return DetailECG();
                                            }));
                                         },
                  ),
                  new ListTile
                  (
                    title: Text('Fri, 16 March 2020, 2:23 PM',
                    style:(TextStyle
                    (fontFamily: 'Oxanium', 
                     fontSize: 18,
                     color:Colors.red[200],
                     fontWeight: FontWeight.bold,
                     )
                    )
                     ),
                      onTap: ()
                                         {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)
                                            {
                                              return DetailECG();
                                            }));
                                         },
                  ),
                  new ListTile
                  (
                    title: Text('Thu, 23 April 2020, 8:03 PM',
                    style:(TextStyle
                    (fontFamily: 'Oxanium', 
                     fontSize: 18,
                     color:Colors.white,
                     fontWeight: FontWeight.bold,
                     )
                    )
                     ),
                      onTap: ()
                                         {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)
                                            {
                                              return DetailECG();
                                            }));
                                         },
                  ),
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

class DetailECG extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
   return new Scaffold
    (
      appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
     title: const Text(
              'ECG DETAILS',
              style: TextStyle(
                fontFamily: 'Oxanium',
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            centerTitle: true,
            actions: <Widget>[
              
            ],
          ),
     body: StreamBuilder
      (
        stream: Firestore.instance.collection('RaqibECG').snapshots(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
          return Text('Loading data.. Please Wait..');
          return Container(
        decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.purple[400], Colors.purple[300], Colors.purple[200], Colors.purple[100]])),
        child: Column
        (
          children: <Widget>
          [
            
            new Container
            (
              child: Padding(
                padding: const EdgeInsets.only(top:0),
                child: Column
                (
                  children: <Widget>
                  [
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text
                          (
                            'Wednesday',
                            style: TextStyle
                            (
                              fontFamily: 'Oxanium',
                              fontSize: 24.0,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text
                          (
                            '10:16 AM',
                            style: TextStyle
                            (
                              fontFamily: 'Oxanium',
                              fontSize: 36.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text
                          (
                            '11 Mar 2020',
                            style: TextStyle
                            (
                              fontFamily: 'Oxanium',
                              fontSize: 24.0,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ],
                    ),
                    new Card
                    (
                      color: Colors.purple[900],
                      child: Column
                      (
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>
                        [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'ECG BASED INFORMATION',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 18.0,
                                color:Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height:12),
                  ],
                ),
              ),
            ),
            Row
            (
              children: <Widget>
              [
                Container
                (
                  child: Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Column
                    (
                      
                      children: <Widget>
                      [
                        new Card
                        (
                          color: Colors.purple[400],
                         child: Row(
                          
                                   children: <Widget>[
                                     new IconButton
                                           (
                                             onPressed: (){},
                                             alignment: Alignment.topCenter,
                                             color: Colors.red,
                                             iconSize: 70,
                                             icon: Icon(MdiIcons.heartPulse, color: Colors.black),
                                            ),
                                    Padding(
                                      padding: const EdgeInsets.only(right:10),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                          'HEART RATE',
                                          style: TextStyle(
                                              fontFamily: 'Oxanium',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.black),
                                  ),
                                         Text(
                                              
                                              snapshot.data.documents[0]['heartratecounter'],
                                              style: TextStyle(
                                              fontFamily: 'Oxanium',
                                              fontSize: 20.0,
                                              color: Colors.white),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text(
                                              
                                              'Beats/min',
                                              style: TextStyle(
                                              fontFamily: 'Oxanium',
                                              fontSize: 12.0,
                                              color: Colors.yellow),
                                              textAlign: TextAlign.start,
                                            ),
                                        ],
                                      ),
                                    ),
 

                                   ],
                                 ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>
                  [
                     Container
                (
                  child: Column
                  (
                    
                    children: <Widget>
                    [
                      new Card
                      (
                        color: Colors.purple[400],
                       child: Row(
                                 children: <Widget>[
                                   new IconButton
                                         (
                                           onPressed: (){},
                                           alignment: Alignment.topCenter,
                                           color: Colors.red,
                                           iconSize: 70,
                                           icon: Icon(MdiIcons.motherHeart, color: Colors.black),
                                          ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:10),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                        'PHYSIO AGE',
                                        style: TextStyle(
                                            fontFamily: 'Oxanium',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0,
                                            color: Colors.black),
                                ),
                                       Text(
                                            
                                            snapshot.data.documents[0]['age'],
                                            style: TextStyle(
                                            fontFamily: 'Oxanium',
                                            fontSize: 20.0,
                                            color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                          Text(
                                              
                                              'Years Old',
                                              style: TextStyle(
                                              fontFamily: 'Oxanium',
                                              fontSize: 14.0,
                                              color: Colors.yellow),
                                              textAlign: TextAlign.start,
                                            ),
                                      ],
                                    ),
                                  ),
                                 ],
                               ),
                      ),
                    ],
                  ),
                ),
          
                  ],
                ),
              ],
            ),
            SizedBox(height:12),
            Container
            (
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>
                [
                    new Card
                      (
                        color: Colors.purple[400],
                       child: Row(
                                  
                                 children: <Widget>[
                                   new IconButton
                                         (
                                           onPressed: (){},
                                           alignment: Alignment.topCenter,
                                           color: Colors.red,
                                           iconSize: 70,
                                           icon: Icon(MdiIcons.human, color: Colors.black),
                                          ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:8),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                        'FATIGUE  ',
                                        style: TextStyle(
                                            fontFamily: 'Oxanium',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0,
                                            color: Colors.black),
                                ),
                                       Text(
                                            
                                            snapshot.data.documents[0]['fatigue'],
                                            style: TextStyle(
                                            fontFamily: 'Oxanium',
                                            fontSize: 20.0,
                                            color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                           Text(
                                            
                                            'Percents',
                                            style: TextStyle(
                                            fontFamily: 'Oxanium',
                                            fontSize: 14.0,
                                            color: Colors.yellow),
                                            textAlign: TextAlign.start,
                                          ),
                                      ],
                                    ),
                                  ),
 

                                 ],
                               ),
                      ),
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