import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:raqib_apps/Views/RaqibTodayPedo.dart' ;
import 'package:raqib_apps/Views/RaqibDailyPedo.dart' ;
import 'package:raqib_apps/Views/RaqibWeeklyPedo.dart' ;


class RaqibPedo extends StatefulWidget {
  @override
  _RaqibPedoState createState() => _RaqibPedoState();
}
class _RaqibPedoState extends State<RaqibPedo> with SingleTickerProviderStateMixin {

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
              padding: const EdgeInsets.only(top: 15.0,bottom: 0.0),
              child: Text(
                'Steps',
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: new CircularPercentIndicator
                        (
                            radius: 130.0,
                            lineWidth: 7.0,
                            animation: true,
                            center: Container(
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          padding: EdgeInsets.only(left: 20.0),
                          child: Icon(
                            MdiIcons.runFast,
                            size: 40.0,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Text(
                              snapshot.data.documents[0]['mainstep'],
                              style: TextStyle(
                                  fontFamily: 'Oxanium',
                                  fontSize: 40.0,
                                  color: Colors.black),
                            ),
                          ),
                          // height: 50.0,
                          // width: 50.0,
                        ),
                      ],
                    ),
                  ),
                  percent: 0.217,
                  //percent: _convert,
                  footer: Padding(
                    padding: const EdgeInsets.only(top:20),
                    child: Row
                    (
                      children: <Widget>
                      [
                        Text(
                      snapshot.data.documents[0]['step'],
                      style: new TextStyle(
                          fontFamily: 'Oxanium',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                     Text(
                      '/',
                      style: new TextStyle(
                          fontFamily: 'Oxanium',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                     Text(
                      snapshot.data.documents[0]['step2'],
                      style: new TextStyle(
                          fontFamily: 'Oxanium',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                     Text(
                      ' steps',
                      style: new TextStyle(
                          fontFamily: 'Oxanium',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                      ],
                    ),
                    // child: new Text(
                    //   '60/100 steps',
                    //   style: new TextStyle(
                    //       fontFamily: 'Oxanium',
                    //       fontSize: 17.0,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.black),
                    // ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.purple,
                        ),
                      ),
                      VerticalDivider(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(top:0),
                        child: Column
                        (
                          children: <Widget>
                          [
                           Column(
                          
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   new IconButton
                                         (
                                           onPressed: (){},
                                           alignment: Alignment.topCenter,
                                           color: Colors.red,
                                           iconSize: 80,
                                           icon: Icon(MdiIcons.fire, color: Colors.black),
                                          ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                      'BURNED CAL',
                                      style: TextStyle(
                                          fontFamily: 'Oxanium',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          color: Colors.black),
                                ),
                                     Text(
                                          
                                          snapshot.data.documents[0]['burnedcal'],
                                          style: TextStyle(
                                          fontFamily: 'Oxanium',
                                          fontSize: 14.0,
                                          color: Colors.white),
                                          textAlign: TextAlign.start,
                                        ),
                                    ],
                                  ),
 

                                 ],
                               ),
                              Row(
                                 children: <Widget>[
                                   new IconButton
                                         (
                                           onPressed: (){},
                                           alignment: Alignment.topCenter,
                                           color: Colors.red,
                                           iconSize: 80,
                                           icon: Icon(MdiIcons.run, color: Colors.black),
                                          ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                      'DISTANCE',
                                      style: TextStyle(
                                          fontFamily: 'Oxanium',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                ),
                                   Row(
                                     children: <Widget>[
                                       Text(
                                          snapshot.data.documents[0]['distance'],
                                          style: TextStyle(
                                          fontFamily: 'Oxanium',
                                          fontSize: 14.0,
                                          color: Colors.white),
                                           ),
                                           Text(
                                          ' KM',
                                          style: TextStyle(
                                          fontFamily: 'Oxanium',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple),
                                           ),
                                     ],
                                   ),
                                    ],
                                  ),
                                 ],
                               ),
                             ],
                           ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height:20),
           Container
           (
             
             child: Column
             (
               
               crossAxisAlignment:CrossAxisAlignment.stretch,
               children: <Widget>
               [
                 Card
                 (
                      
                     color: Colors.purple[400],
                       child: Row(
                                  
                                 children: <Widget>[
                                 Padding(
                                   padding: const EdgeInsets.fromLTRB(16.0,8.0,8.0,8.0),
                                   child: Text('STATUS: ',
                                        style:TextStyle
                                        (
                                          fontFamily:'Oxanium',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.fromLTRB(0.0,8.0,8.0,8.0),
                                   child: Text(snapshot.data.documents[0]['status'],
                                        style:TextStyle
                                        (
                                          fontFamily:'Oxanium',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color:Colors.white,
                                        )),
                                 ),
                                 ],
                               ),
                 ),
                 SizedBox(height: 10),
                 Card
                 (
                      
                     color: Colors.purple[400],
                       child: Row(
                                  
                                 children: <Widget>[
                                 Padding(
                                   padding: const EdgeInsets.fromLTRB(16.0,8.0,8.0,8.0),
                                   child: Text('ANALYSIS: ',
                                        style:TextStyle
                                        (
                                          fontFamily:'Oxanium',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.fromLTRB(0.0,8.0,8.0,8.0),
                                   child: Text(snapshot.data.documents[0]['analysis'],
                                        style:TextStyle
                                        (
                                          fontFamily:'Oxanium',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color:Colors.white,
                                        )),
                                 ),
                                 ],
                               ),
                 ),
                 SizedBox(height: 20),
                 
               ],
             ),
           ),
           
          Container
          (
            child: Column
            (
              children: <Widget>
              [
                Text('PEDOMETER GRAPH',
                style: TextStyle
                (
                  fontFamily: 'Oxanium',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  
                ),),
              ],
            ),
          ),
          SizedBox(height:10),
           Container
           (
             child: Column
             (
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>
               [
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton
                                  
                                  (
                                    shape: RoundedRectangleBorder
                               (
                                 borderRadius: BorderRadius.circular(100),
                               ),
                                    child: Text('Today Graph'  ,
                                                 style: TextStyle
                                                 (
                                                   fontSize: 18.0,
                                                   fontFamily: 'Oxanium',
                                                   color: Colors.black,
                                                 ), 
                                               ),
                                               elevation: 20.0,
                                               padding: EdgeInsets.all(8.0),
                                               onPressed: ()
                                               {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)
                                                  {
                                                    return RaqibTodayPedo();
                                                  }));
                                               },
                                               color: Colors.orange[300],
                                  ),
                      ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: RaisedButton
                            
                            (
                              shape: RoundedRectangleBorder
                             (
                               borderRadius: BorderRadius.circular(100),
                             ),
                              child: Text('Daily Graph',
                                             style: TextStyle
                                             (
                                               fontSize: 18.0,
                                               fontFamily: 'Oxanium',
                                               color: Colors.black,
                                             ), 
                                           ),
                                           elevation: 20.0,
                                           padding: EdgeInsets.all(8.0),
                                           onPressed: ()
                                           {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)
                                              {
                                                return RaqibDailyPedo();
                                              }));
                                           },
                                           color: Colors.orange[300],
                            ),
                                 ),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: RaisedButton
                                                            
                            (
                               shape: RoundedRectangleBorder
                               (
                                 borderRadius: BorderRadius.circular(100),
                               ),
                                child: Text('Weekly Graph',
                                             style: TextStyle
                                             (
                                               fontSize: 18.0,
                                               fontFamily: 'Oxanium',
                                               color: Colors.black,
                                             ), 
                                           ),
                                           elevation: 20.0,
                                           padding: EdgeInsets.all(8.0),
                                           onPressed: ()
                                           {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)
                                              {
                                                return RaqibWeeklyPedo();
                                              }));
                                           },
                                           color: Colors.orange[300],
                            ),
                             ),
                    ],
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