import 'package:flutter/material.dart';

class DateInfo {
  final int year;
  final int month;
  final int il;
  final String yoil;
  List calDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  
  // const DateInfo({this.year, this.month, this.il, this.yoil});


  String _curDate(){

  }
}

const yoil_en = const <String>[
  'sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat'
];
const yoil_kr = const <String>[
  '일', '월', '화', '수', '목', '금', '토'
];
const lastDate = const <int>[
  31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
];