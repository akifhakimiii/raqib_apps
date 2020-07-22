import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:raqib_apps/Services/raqib_provider.dart';
import 'package:raqib_apps/Views/RaqibLogin.dart';
import 'package:raqib_apps/Views/RaqibProfile.dart';
import 'package:raqib_apps/Views/RaqibMonitor.dart';
import 'package:raqib_apps/Views/RaqibContact.dart';
import 'package:raqib_apps/Views/RaqibReport.dart';
import 'package:raqib_apps/Views/RaqibHome.dart';
import 'package:raqib_apps/Views/RaqibBP.dart';
import 'package:raqib_apps/Views/RaqibECG.dart';
import 'package:raqib_apps/Views/RaqibPedo.dart';
import 'package:raqib_apps/Views/RaqibLocation.dart';
import 'package:raqib_apps/Views/RaqibHeart.dart';
import 'package:raqib_apps/Views/RaqibHeartTest.dart';
import 'package:raqib_apps/Services/auth_services.dart';

class RaqibMainPage extends StatefulWidget {

  const RaqibMainPage({Key key,@required this.user}): super (key:key);
  final AuthResult user;
 
  @override
  _RaqibMainPageState createState() => _RaqibMainPageState();
}

class _RaqibMainPageState extends State<RaqibMainPage> {
 int _selectedIndex = 0;
static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
final List<Widget> _widgetOptions = <Widget>[
 RaqibHome(),
 RaqibLocation(),
 RaqibHeartTest(),
 RaqibPedo(),
 RaqibBP(),
 RaqibECG(),
];

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
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
              IconButton(
              onPressed: () async {

                try{ 
                  AuthService auth = Provider.of(context).auth;
                  await auth.signOut();
                  print('Signed Out');
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> RaqibLogin()));
                } catch (e){
                  print (e);
                }
              },
              icon: Icon(MdiIcons.logout),
              )
            ],
          ),
         drawer: Drawer(
           elevation: 16.0,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  "RAQIB",
                  textAlign: TextAlign.justify,
                  textScaleFactor: 2.0,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.purple, Colors.white])),
              ),
              ListTile(
                title: Text("Profile",
                style: TextStyle(fontFamily: 'Oxanium', fontSize: 20),),
                
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Contact",
                  style: TextStyle(fontFamily: 'Oxanium', fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Report",
                style: TextStyle(fontFamily: 'Oxanium', fontSize: 20),),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
    body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.home),
          title: Text('HOME')
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.mapMarker),
          title: Text('LOCATION')
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.heartPulse),
          title: Text('HR')
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.footPrint),
          title: Text('STEPS')
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.bloodBag),
          title: Text('BP')
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.chartLine),
          title: Text('ECG')
        ),
      ],
      backgroundColor: Colors.purple[100],

      unselectedItemColor: Colors.purple[200],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.deepPurple,
      onTap: _onItemTapped,
    ),
  );
}
}
