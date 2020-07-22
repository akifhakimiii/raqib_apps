import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:raqib_apps/Views/RaqibProfile.dart';
import 'package:raqib_apps/Views/RaqibMonitor.dart';
import 'package:raqib_apps/Views/RaqibContact.dart';
import 'package:raqib_apps/Views/RaqibReport.dart';

class TabbedPageRaqib extends StatefulWidget{
  @override
  _TabbedPageRaqibState createState() => _TabbedPageRaqibState();
}

class _TabbedPageRaqibState extends State<TabbedPageRaqib> {
 
  /*int _currentIndex = 0;
  final List<Widget> _children = 
  [
    RaqibProfile(),
    RaqibMonitor(),
    RaqibReport(),
    RaqibContact()
  ];*/

   @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple[800],
            title: const Text(
              'RAQIB',
              style: TextStyle(
                //fontFamily: 
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
              onPressed: (){},
              icon: Icon(MdiIcons.logout),
              )
            ],
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map<Widget>((Choice choice){

                return Tab(
                  text: choice.title,
                  icon: Icon(
                    choice.icon,
                    color : choice.colors,
                    ),
                );
              }).toList(),
            )
          ),
          body: TabBarView(
            children: choices.map((Choice choice){
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ChoicePage(
                  choice:choice,
                ),
              );
            }).toList(),
          )
        ) 
      )
    );
    
  }
}
class Choice{
  final int id;
  final String title;
  final IconData icon;
  final Color colors;
   Choice({this.id, this.title,this.icon,this.colors});
}
   List<Choice> choices = <Choice>[
    Choice(id:1, title: 'PROFILE', icon:MdiIcons.accountDetailsOutline, colors:Colors.purple[100]),
    Choice(id:2, title: 'MONITOR HEALTH', icon:MdiIcons.heartPulse, colors:Colors.purple[100]),
    Choice(id:3, title: 'REPORT', icon:MdiIcons.fileDocumentBoxCheckOutline, colors:Colors.purple[100]),
    Choice(id:4, title: 'CONTACT', icon:MdiIcons.contactPhoneOutline, colors:Colors.purple[100]),
  
  ];
  class ChoicePage extends StatelessWidget{
    ChoicePage({Key key, this.choice}): super(key: key);
    final Choice choice;

    @override
     Widget build(BuildContext context){
    final TextStyle textstyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.purple[50],
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              choice.icon,
              size: 150.0,
              color: textstyle.color,
              ),
          ],
        ),
      ),
    );
    
    }  
  }

