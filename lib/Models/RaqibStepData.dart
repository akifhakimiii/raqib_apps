import 'package:cloud_firestore/cloud_firestore.dart';

class StepData {
  String analysis;
  int step;
  double burnedcal;
  double distance;
  String status;

  Timestamp date;

StepData({this.analysis, this.step, this.burnedcal, this.status, this.distance,this.date});
}