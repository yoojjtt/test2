import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import '../main.dart';

enum MyDialogAction { yes, no }

class ShowAlert extends StatelessWidget {
  Future<SharedPreferences> _sPrefs = SharedPreferences.getInstance();
  String contents;

  ShowAlert(this.contents);

  @override
  Widget build(BuildContext context) {
    Future<Null> clearItems() async {
      final SharedPreferences prefs = await _sPrefs;
      prefs.clear();
    }

    getUser() async {
      final SharedPreferences prefs = await _sPrefs;
      var val = prefs.getString('userName');
      print(val);

      if (val == null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SplashScreen()),
        );
      } else {
        Navigator.pop(context);
      }
      // setState(() {});
    }

    void _dialogResult(MyDialogAction value) {
      print("select $value");
      if (value == MyDialogAction.yes) {
        clearItems();
        Timer(Duration(seconds: 1), () {
          print("Logout");        
          //유저체크안하면 테스트모드
          getUser();          
          
        });

        
      }
      if (value == MyDialogAction.no) {
        Navigator.pop(context);
      }
    }

    // TODO: implement build
    return new AlertDialog(
      content: new Text(
        this.contents,
        style: new TextStyle(fontSize: 15.0),
      ),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              _dialogResult(MyDialogAction.yes);
            },
            child: new Text("네")),
        new FlatButton(
            onPressed: () {
              _dialogResult(MyDialogAction.no);
            },
            child: new Text("아니오")),
      ],
    );
    ;
  }
}
