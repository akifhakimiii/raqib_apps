import 'package:cloud_firestore/cloud_firestore.dart';

class HeartData {
  String analysis;
  int average;
  int minimum;
  int maximum;
  String status;

  Timestamp date;

HeartData({this.analysis, this.average, this.minimum, this.maximum, this.status, this.date});
  // HeartData.fromMap(Map<String, dynamic> data){

  //   analysis = data['Analysis'];
  //   average = data['Average'];
  //   minimum = data['Minimum'];
  //   maximum = data['Maximum'];
  //   status = data['Status'];
  //   createdAt = data['Date'];
  // }
}