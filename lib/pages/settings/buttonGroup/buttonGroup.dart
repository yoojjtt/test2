import 'package:flutter/material.dart';
import './notificationPage/notificationPage.dart';
import './customerServicePage/customerServicePage.dart';
import './privateBoardPage/privateBoardPage.dart';
import './settingPage/settingPage.dart';

class ButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    navigation(String nav) {
      
      Widget navigatorClass;
      
      switch(nav){
        case '공지사항' : navigatorClass =  NotificationPage(); break;
        case '고객센터' : navigatorClass = CustomerServicePage(); break;
        case '1:1문의' : navigatorClass = PrivateBoardPage(); break;
        case '설정' : navigatorClass = SettingPage(); break;
      }
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => navigatorClass),
      );
    }

    Widget buildPadding(BuildContext context, String btnName) {
      return Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Container(
            width: 200.0,
            child: RaisedButton(
              child: Text(btnName),
              onPressed: () { 
                navigation(btnName);
              },
              color: Colors.white,
            ),
          ));
    }

    return Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildPadding(context, "공지사항"),
          buildPadding(context, "고객센터"),
          buildPadding(context, "1:1문의"),
          buildPadding(context, "설정")
        ],
      ),
    );
  }
}
