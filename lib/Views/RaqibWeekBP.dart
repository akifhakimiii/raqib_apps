import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:raqib_apps/Views/RaqibBP.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class RaqibWeekBP extends StatefulWidget {

  final Widget child;

  RaqibWeekBP({Key key, this.child}) : super(key: key);
  @override
  _RaqibWeekBPState createState() => _RaqibWeekBPState();
}

class _RaqibWeekBPState extends State<RaqibWeekBP> {
   List<charts.Series<Pollution, String>> _seriesData;
  _generateData() {
    var data1 = [
      new Pollution(1980, 'USA', 30),
      new Pollution(1980, 'Asia', 40),
      new Pollution(1980, 'Europe', 10),
    ];
    var data2 = [
      new Pollution(1985, 'USA', 100),
      new Pollution(1980, 'Asia', 150),
      new Pollution(1985, 'Europe', 80),
    ];
    var data3 = [
      new Pollution(1985, 'DIA', 73),
      new Pollution(1980, 'SYS', 100),
      //new Pollution(1985, 'Europe', 180),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2019',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
       fillColorFn: (Pollution pollution, _) =>
          charts.ColorUtil.fromDartColor(Colors.blue[200]),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Pollution, String>>();
    _generateData();
  }
  Widget build(BuildContext context) {
      return new Scaffold
    (
      appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
     title: const Text(
              'ONE WEEK GRAPH',
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
      // body: Container(
      //   decoration: BoxDecoration(
      //                   gradient: LinearGradient(
      //                     begin: Alignment.topCenter,
      //                     end: Alignment.bottomCenter,
      //                     colors: [Colors.purple[400], Colors.purple[300], Colors.purple[200], Colors.purple[100]])),
      //   child: Column(
      //     children: <Widget>[
            
      //       new Container
      //       (
              
      //       ),
      //     ],
      //   ),
      // )
      body: Container
      (
        color: Colors.purple[200],
        child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                            'Blood Pressure Graph',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            barGroupingType: charts.BarGroupingType.grouped,
                            //behaviors: [new charts.SeriesLegend()],
                            animationDuration: Duration(milliseconds: 500),
                          ),
                        ),
                      ],
                    ),
                  ),
      ),
    );
  }
  
}
class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}