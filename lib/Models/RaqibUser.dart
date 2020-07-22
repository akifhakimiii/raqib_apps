import 'package:cloud_firestore/cloud_firestore.dart';

class User {
    final String uid;
    User ({this.uid});
}

class UserHeartData {
  final String uid;
  final String analysis;
  final int average;
  final int minimum;
  final int maximum;
  final String status;
  final Timestamp date;

  UserHeartData({ this.uid, this.analysis, this.average, this.minimum, this.maximum, this.status, this.date });
}