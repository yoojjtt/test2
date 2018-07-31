import 'package:flutter/material.dart';
import './calendar_cell.dart';

class Calender extends StatelessWidget {
  final EdgeInsets margin;
  final List<String> week = ["일", "월", "화", "수", "목", "금", "토"];
  final List arrayDay = [];
  Calender({this.margin});

  int totaldays(int month) {
    if (month == 2)
      return (28);
    else if (month == 4 || month == 6 || month == 9 || month == 11)
      return (30);
    else
      return (31);
  }
  

  @override
  Widget build(BuildContext context) {
    int element = new DateTime.now().day - new DateTime.now().weekday; // 2017-07-26 이면 현재날짜 26   26일은 주의 4번째날 목요일
    int totalDay = totaldays(new DateTime.now().month);  // 윤년 계산이후에 마지막 날짜
    for (var i = 0; i < 7; i++) {
      if (element > totalDay) element = 1;  // 22 > 31
      arrayDay.add(element);
      element++;
    }
    var i = -1;
    return (new Container(
      margin: margin,
      alignment: Alignment.center,
      padding: new EdgeInsets.only(top: 0.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        // border: new Border(
        //   bottom: new BorderSide(
        //       width: 1.0, color: const Color.fromRGBO(204, 204, 204, 1.0)),
        // ),
      ),
      child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: week.map((String week) {
            ++i;
            return new CalenderCell(
                week: week,
                day: arrayDay[i].toString(),
                today: arrayDay[i] != new DateTime.now().day ? false : true);
          }).toList()),
    ));
  }
}