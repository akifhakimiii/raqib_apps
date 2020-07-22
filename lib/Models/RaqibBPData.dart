import 'package:cloud_firestore/cloud_firestore.dart';

class BPData {
  String analysis;
  int sys;
  int dia;
  String record;
  String status;

  Timestamp date;

BPData({this.analysis, this.sys, this.dia, this.record, this.status,this.date});
}