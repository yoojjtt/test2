import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';


Dio dio = new Dio();
Future<SharedPreferences> _sPrefs = SharedPreferences.getInstance();
const String _baseUrl = "http://220.230.113.201:3000/";
List<String> router = [
  "worker/ajax.json",
  "workerEnroll_info/ajax.json",
  "workList_info/ajax.json"
];

String getUrl(String name){

  var route;
  switch(name){
    case 'worker': route =  router[0]; break;
    case 'workerEnroll': route =  router[1]; break;
    case 'workList': route =  router[2]; break;
  }
  var url = _baseUrl + route;
  return url;
}


postMethod(String routerName, String gubun, data) async{
  
  
  Response response = await dio.post(getUrl(routerName), data: {
      "gubun": gubun,
      "data": data
    });
  // print(response.data);
  // print(response.data.toString());  
  // print(response.headers);
  // print(response.request);
  // print(response.statusCode);
  // final map json.decode(response.body);
  // var map = JSON.decode(response.data);
  // print(map);

  return response;
}


Future<Null> setPref(String prefName, String val) async {
    final SharedPreferences prefs = await _sPrefs;
    print("set preference is : $val");
    prefs.setString(prefName, val);
    prefs.getString(val);
}

Future<String> getPref(String pref) async {
    final SharedPreferences prefs = await _sPrefs;
    // var val = prefs.getString('userName');
    var val = prefs.getString(pref);
    print("preference is : $val");
    return val;
  }
