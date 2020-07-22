import 'package:cloud_firestore/cloud_firestore.dart';

class MainData {
  String analysis;
  int ecg;
  int dia;
  int sys;
  int step;

  Timestamp latestalert;

MainData({this.analysis, this.ecg, this.dia, this.sys, this.step, this.latestalert});
}