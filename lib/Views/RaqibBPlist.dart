import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class RaqibBPlist extends StatefulWidget {
  @override
  _RaqibBPlistState createState() => _RaqibBPlistState();
}

class _RaqibBPlistState extends State<RaqibBPlist> {
  @override
  Widget build(BuildContext context) {
      return new Scaffold
    (
       appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
     title: const Text(
              'RAQIB',
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
      body: Container(
        decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.purple[400], Colors.purple[300], Colors.purple[200], Colors.purple[100]])),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom: 5.0),
              child: Text(
                'Blood Pressure List',
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
                    color: Colors.pink[800],
                    child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,0),
                              child: Text('2:38 PM',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow[100],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(100,5,5,0),
                              child: Text('121 SYS / 80 DIA',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 20,
                                color: Colors.white,
                              )),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,5),
                              child: Text('13 Mar 20',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(140,5,5,5),
                              child: Text('Normal',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )),
                            ),
                          ],
                        ),
                      ],
                      
                    ),
                  )
                ],
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
                    color: Colors.pink[800],
                    child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,0),
                              child: Text('10:10 AM',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow[100],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(100,5,5,0),
                              child: Text('112 SYS / 69 DIA',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 20,
                                color: Colors.white,
                              )),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,5),
                              child: Text('11 Mar 20',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(155,5,5,5),
                              child: Text('Ideal',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )),
                            ),
                          ],
                        ),
                      ],
                      
                    ),
                  )
                ],
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
                    color: Colors.pink[800],
                    child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,0),
                              child: Text('1:23 PM',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow[100],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(100,5,5,0),
                              child: Text('133 SYS / 79 DIA',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 20,
                                color: Colors.white,
                              )),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,5),
                              child: Text('29 Feb 20',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(130,5,5,5),
                              child: Text('Partial High',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )),
                            ),
                          ],
                        ),
                      ],
                      
                    ),
                  )
                ],
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
                    color: Colors.pink[800],
                    child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,0),
                              child: Text('10:05 PM',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow[100],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(100,5,5,0),
                              child: Text('134 SYS / 77 DIA',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 20,
                                color: Colors.white,
                              )),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,5),
                              child: Text('26 Feb 20',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(130,5,5,5),
                              child: Text('Partial High',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )),
                            ),
                          ],
                        ),
                      ],
                      
                    ),
                  )
                ],
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
                    color: Colors.pink[800],
                    child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,0),
                              child: Text('12:38 PM',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow[100],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(100,5,5,0),
                              child: Text('161 SYS / 80 DIA',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 20,
                                color: Colors.white,
                              )),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,5),
                              child: Text('13 Feb 20',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(150,5,5,5),
                              child: Text('Normal',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )),
                            ),
                          ],
                        ),
                      ],
                      
                    ),
                  )
                ],
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
                    color: Colors.pink[800],
                    child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,0),
                              child: Text('2:38 PM',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow[100],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(100,5,5,0),
                              child: Text('142 SYS / 77 DIA',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 20,
                                color: Colors.white,
                              )),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,5,5),
                              child: Text('13 Mar 20',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(150,5,5,5),
                              child: Text('Normal',
                              style: TextStyle
                              (
                                fontFamily: 'Oxanium',
                                fontSize: 14,
                                color: Colors.yellow,
                              )),
                            ),
                          ],
                        ),
                      ],
                      
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}