import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:raqib_apps/Views/RaqibPedo.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class RaqibWeeklyPedo extends StatefulWidget {

  final Widget child;
  RaqibWeeklyPedo({Key key, this.child}) : super(key: key);

  @override
  _RaqibWeeklyPedoState createState() => _RaqibWeeklyPedoState();
}

class _RaqibWeeklyPedoState extends State<RaqibWeeklyPedo> {
  List<charts.Series<Sales, int>> _seriesLineData;
  _generateData() {

    var linesalesdata = [
      new Sales(0, 90),
      new Sales(1, 100),
      new Sales(2, 55),
      new Sales(3, 300),
      new Sales(4, 199),
     // new Sales(5, 70),
    ];
    var linesalesdata1 = [
      new Sales(0, 100),
      new Sales(1, 123),
      new Sales(2, 98),
      new Sales(3, 97),
      new Sales(4, 54),
     // new Sales(5, 60),
    ];

    var linesalesdata2 = [
      new Sales(0, 20),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(4, 45),
      
    ];
    

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }
  @override
   void initState() {
    // TODO: implement initState
    super.initState();
    _seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }
  Widget build(BuildContext context) {
      return new Scaffold
    (
      appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
     title: const Text(
              'WEEKLY GRAPH',
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
      body:new Container
            (
              color: Colors.purple[100],
              child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                            'WEEKLY TOTAL RUN',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.LineChart(
                            _seriesLineData,
                            defaultRenderer: new charts.LineRendererConfig(
                                includeArea: true, stacked: true),
                            animate: true,
                            animationDuration: Duration(seconds: 1),
                            behaviors: [
        new charts.ChartTitle('Week',
            behaviorPosition: charts.BehaviorPosition.bottom,
            titleOutsideJustification:charts.OutsideJustification.middleDrawArea),
        new charts.ChartTitle('Meter',
            behaviorPosition: charts.BehaviorPosition.start,
            titleOutsideJustification: charts.OutsideJustification.middleDrawArea),
        // new charts.ChartTitle('Departments',
        //     behaviorPosition: charts.BehaviorPosition.end,
        //     titleOutsideJustification:charts.OutsideJustification.middleDrawArea,
        //     )   
      ]
                          ),
                        ),
                      ],
                    ),
                  ),
            ),
    );
  }
}
class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
