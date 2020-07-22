import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:raqib_apps/Models/RaqibHeartData.dart';

class HeartNotifer with ChangeNotifier{
  List<HeartData> _heartList = [];
  HeartData _currentHeart;

  UnmodifiableListView<HeartData> get heartList => UnmodifiableListView(_heartList);

  HeartData get currentHeart => _currentHeart;

  set heartList(List<HeartData> heartList){
    _heartList = heartList;
    notifyListeners();
  }

  set currentHeart(HeartData heart){
    _currentHeart = heart;
    notifyListeners();
  }
}