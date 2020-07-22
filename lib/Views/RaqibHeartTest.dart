import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:raqib_apps/Services/auth_services.dart';
class RaqibHeartTest extends StatefulWidget {
  final AuthService _auth = AuthService();
  @override
  _RaqibHeartTestState createState() => _RaqibHeartTestState();


}

class _RaqibHeartTestState extends State<RaqibHeartTest> {



   Future<FirebaseUser> user;

  // you may get it in initState
  @override
  void initState() {
    user = FirebaseAuth.instance.currentUser();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    
    //final heartData = Provider.of<List<HeartData>>(context)??[];
   
    return Scaffold
    (
      body: StreamBuilder
      (
        stream: Firestore.instance.collection('RaqibHeart').snapshots(),
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
                'Heart Rate',
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container
                      (
                        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10),
                        width: 120.0,
                        height: 120.0,
                        child: new Card
                        (
                          shape: RoundedRectangleBorder
                          (
                            borderRadius: BorderRadius.circular(200),
                            side: BorderSide(color: Colors.purple,width: 3),
                          ),
                          color: Colors.purple[200],
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                         
                          //get minimum
    
                          child: Column(
                            children: <Widget>[
                              
                              Text(
                                snapshot.data.documents[0]['minimum'],
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
                          ),
                        ),
                        ),
                      ),
                      new Container
                      (
                        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10),
                        width: 120.0,
                        height: 120.0,
                        child: new Card
                        (
                          shape: RoundedRectangleBorder
                          (
                            borderRadius: BorderRadius.circular(200),
                            side: BorderSide(color: Colors.purple,width: 3),
                          ),
                          color: Colors.purple[200],
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          // get average
                          child: Column(
                            children: <Widget>[
                              Text(
                                snapshot.data.documents[0]['average'],
                                textAlign: TextAlign.center, 
                                style: TextStyle(fontSize: 28, fontFamily: 'Oxanium'),
                          
                                ),
                               SizedBox(height:2),
                               Text(
                                "AVERAGE",
                                textAlign: TextAlign.center, 
                                style: TextStyle(fontSize: 10,
                                fontWeight: FontWeight.bold),
                                ),
                            ],
                          ),
                        ),
                        ),
                      ),
                       new Container
                      (
                        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10),
                        width: 120.0,
                        height: 120.0,
                        child: new Card
                        (
                          shape: RoundedRectangleBorder
                          (
                            borderRadius: BorderRadius.circular(200),
                            side: BorderSide(color: Colors.purple,width: 3),
                          ),
                          color: Colors.purple[200],
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                         //get maximum
                          child: Column(
                            children: <Widget>[
                              Text(
                                snapshot.data.documents[0]['maximum'],
                                textAlign: TextAlign.center, 
                                style: TextStyle(fontSize: 28, fontFamily: 'Oxanium'),
                          
                                ),
                               SizedBox(height:2),
                               Text(
                                "MAXIMUM",
                                textAlign: TextAlign.center, 
                                style: TextStyle(fontSize: 10,
                                fontWeight: FontWeight.bold),
                                ),
                            ],
                          ),
                        ),
                        ),
                      ),

                    ],
                  ),
                   Container
                   (
                     child: Column
                     (
                       children: <Widget>
                       [
                         Row
                         (
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>
                           [
                             new Container
                             (
                              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 40),
                              // width: 120.0,
                              // height: 120.0,
                             ),
                             new Card
                             (
                               color: Colors.purple[400],
                               child: RaisedButton
                               (
                                 color: Colors.purple,
                                 splashColor: Colors.white,
                                 focusColor: Colors.white,
                                 hoverColor: Colors.white,
                                 child: Text
                                 (
                                   '      PICK A DATE                                ',
                                   style: TextStyle(fontSize: 20, fontFamily: 'Oxanium'),
                                   textAlign: TextAlign.center,
                                 ),
                                 onPressed: ()
                                 {
                                   showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2020), lastDate:DateTime.now());
                                 },
                               ),
                               
                             )                              
                           ],
                         ),
                       ],
                      
                     ),
                    
                   ),
                   SizedBox(height: 20),
                   Container
                   (
                     child: Column
                     (
                       children: <Widget>
                       [
                         Row
                         
                         (
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>
                           [
                             new Container
                             (
                              // padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10),
                              // width: 120.0,
                              // height: 120.0,
                             ),
                             new Card
                             (
                               color: Colors.purple[400],
                               child: new Card
                               (
                                shape: RoundedRectangleBorder
                          (
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.purple,width: 3),
                          ),
                          color: Colors.purple[200],
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          // get total maxium
                          child: Column(
                            children: <Widget>[
                              Text(
                                snapshot.data.documents[0]['maximum'],
                                textAlign: TextAlign.center, 
                                style: TextStyle(fontSize: 28, fontFamily: 'Oxanium'),
                          
                                ),
                               SizedBox(height:2),
                               Text(
                                "MAXIMUM",
                                textAlign: TextAlign.center, 
                                style: TextStyle(fontSize: 10,
                                fontWeight: FontWeight.bold),
                                ),
                            ],
                          ),
                        ),
                               ),
                              
                             ),                              
                           ],
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height:50),
                   Column
                   (
                     
                     children: <Widget>
                     [

                       Padding(
                         padding: const EdgeInsets.only(top:20.0),
                         // get status
                         child: Row(
                           
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Text
                             (
                               'STATUS: ',
                               style: TextStyle(fontFamily: 'Oxanium', color: Colors.purple, fontSize:25.0, fontWeight: FontWeight.bold),
                             ),
                            
                             Text
                         (
                           snapshot.data.documents[0]['status'],
                               style: TextStyle(fontFamily: 'Oxanium', color: Colors.black, fontSize:25.0, fontWeight: FontWeight.bold),
                         ),
                           ],
                           
                         ),
                       ),
                       
                     ],
                   ),
                    Column
                   (
                     
                     children: <Widget>
                     [

                       Padding(
                         padding: const EdgeInsets.only(top:20.0, bottom: 8.0),
                         //get analysis
                         child: Row(
                           
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Text
                             (
                               'ANALYSIS: ',
                               style: TextStyle(fontFamily: 'Oxanium', color: Colors.purple, fontSize:24.0, fontWeight: FontWeight.bold),
                             ),
                             Text
                         (
                           snapshot.data.documents[0]['analysis'],
                               style: TextStyle(fontFamily: 'Oxanium', color: Colors.black, fontSize:24.0, fontWeight: FontWeight.bold),
                         ),
                           ],
                           
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


