import 'package:cloud_firestore/cloud_firestore.dart';
class ECGData {
  int heartratecounter;
  int age;
  int fatigue;
  String record;
  String status;

  Timestamp date;

ECGData({this.heartratecounter, this.age, this.fatigue, this.record, this.record,this.status});
}