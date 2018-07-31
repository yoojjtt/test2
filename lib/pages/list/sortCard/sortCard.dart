import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'dart:async';

import './sortBar.dart';
import './calendarBar.dart';
import './sortCard_provider.dart';
import '../../../_model/calendar.dart';
import 'dart:math';
import 'dart:core';

class SortCard extends StatefulWidget{

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      
      return SortCardState();
    }
}

class SortCardState extends State<SortCard>{
  
  
  var now = new DateTime.now();
  String newNow = formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]).toString();
  int _year = new DateTime.now().year;
  int _month = new DateTime.now().month;
  int _day = new DateTime.now().day;
  int _week = new DateTime.now().weekday;
  int _lastDayInt = 30;
  
  @override
  void initState() {
    // TODO: implement initState
    
    super.initState();
    calCalendar(newNow);
    int element = new DateTime.now().day - new DateTime.now().weekday;
    print("date");
    print(new DateTime.utc(2018, 7, 25).weekday); // 주의 수요일이니까 3 참고로 일요일은 7
    print(new DateTime.now().day);
    print(element);
    print(new DateTime.now().weekday);
    // Timer.periodic(new Duration(milliseconds: 1000), (Timer timer) {
    
    //   setState(() {
    //     now = new DateTime.now();
    //     newNow = formatDate(
    //         now, [yyyy, '-', mm, '-', dd]).toString();
        
    //   });
      
    // });
  }
  

  onPressed(String type, int val) {

    if(type == "month"){
      setState(() {
        print(val);        
        print("hello");
      });
    }
      
  
  }

  calCalendar(String date){
    print("현재 날짜" + date);
    print(yoil_kr);
    print(lastDate);
    var currentMonth = _month;
    var currentDay = _day;  // 이번달 1일의 요일을 0~6으로 반환해야함 
    if ((_year % 4 == 0 && _year % 100 != 0) || _year % 400 == 0){
            lastDate[1] = 29;
    }
    var curruntLastDate = lastDate[currentMonth];  // 그해 그달 마지막 일자.
    print(curruntLastDate);
    // var week =  ((currentDay + curruntLastDate) / 7);
    // var week = _date; // 총 이번달 몇주인지
    // print(_date);
    setState(() {
          _lastDayInt = curruntLastDate;
        });
    
    // 마지막날 날짜  31/30/29/28
    // 총 몇주 인지 
    // 첫째 일자가 몇 요일 인지 


  }


  var _body = Card(
                  child: 
                  Column(
                    children: <Widget>[SortBar(), Divider(), CalendarBar()],
                  ),
            
      );

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return   SortCardProvider(
        myDate: newNow,
        month: _month,
        lastDayInt: _lastDayInt,
        onPressed: onPressed,
        child: _body,
      );
    }
    
}

