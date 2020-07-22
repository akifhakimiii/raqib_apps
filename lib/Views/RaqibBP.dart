import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:raqib_apps/Services/auth_services.dart';
import 'package:raqib_apps/Views/RaqibBPlist.dart';
import 'package:raqib_apps/Views/RaqibDailyBP.dart';
import 'package:raqib_apps/Views/RaqibWeekBP.dart';
import 'package:raqib_apps/Views/RaqibWeeklyBP.dart';
class RaqibBP extends StatefulWidget {
   final AuthService _auth = AuthService();
  @override
  _RaqibBPState createState() => _RaqibBPState();
}

class _RaqibBPState extends State<RaqibBP> with SingleTickerProviderStateMixin{
  Future<FirebaseUser> user;
   TabController tabcontroller;
  @override
  void initState(){
    tabcontroller = new TabController(length: 3, vsync: this);
    user = FirebaseAuth.instance.currentUser();
    super.initState();
    
      
  }
  @override
  void dispose(){
    tabcontroller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return new Scaffold
    (
      resizeToAvoidBottomPadding: false,
      body: StreamBuilder
      (
        stream: Firestore.instance.collection('RaqibBP').snapshots(),
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
                'Blood Pressure',
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
              child: Card
              (
                elevation: 24.0,
                color: Colors.purple,
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>
                    [
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Row(
                          children: <Widget>[
                            Text
                            (
                              snapshot.data.documents[0]['sys'],
                              style: TextStyle
                              (
                                fontSize: 36.0,
                                fontFamily: 'Oxanium',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                             Text
                            (
                              ' SYS',
                              style: TextStyle
                              (
                                fontSize: 20.0,
                                fontFamily: 'Oxanium',
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                            Text
                            (
                              ' /',
                              style: TextStyle
                              (
                                fontSize: 44.0,
                                fontFamily: 'Oxanium',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text
                            (
                              snapshot.data.documents[0]['dia'],
                              style: TextStyle
                              (
                                fontSize: 36.0,
                                fontFamily: 'Oxanium',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text
                            (
                              ' DIA',
                              style: TextStyle
                              (
                                fontSize: 20.0,
                                fontFamily: 'Oxanium',
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                        
                      ),
                    Container
                    (
                      child: Row
                      (
                        children: <Widget>
                        [
                           Padding(
                             padding: const EdgeInsets.only(left:90),
                             child: Text
                              (
                                snapshot.data.documents[0]['record'],
                                style: TextStyle
                                (
                                  fontSize: 24.0,
                                  fontFamily: 'Oxanium',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[400],
                                ),
                              ),
                           ),
                        ],
                      ),
                    ),
                    SizedBox(height:12),
                    Container
                    (
                      child: Column
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>
                        [
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: RaisedButton
                            
                            (
                              child: Text('View Records',
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
                                              return RaqibBPlist();
                                            }));
                                         },
                                         color: Colors.orange[300],
                            ),
                          )
                        ],
                      ),
                    ),
              
                    ],
                  ),
                ),
              ),            
            ),
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
                Text('BP GRAPH',
                style: TextStyle
                (
                  fontFamily: 'Oxanium',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  
                ),),
              ],
            ),
          ),
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
                                                    return RaqibDailyBP();
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
                                                return RaqibWeekBP();
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
                                                return RaqibWeeklyBP();
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