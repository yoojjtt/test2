import 'package:flutter/material.dart';
import '../../_service/apiFunction.dart';
import 'dart:async';
import './profileCard/profileCard.dart';
import './buttonGroup/buttonGroup.dart';

class SettingsPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //StateWidget을 반환한다.
    //return null;
    return new SettingsPageState();
  }
}

class SettingsPageState extends State<SettingsPage> {
  

  var username;

  void initState() {
    super.initState();
    print("init settings page");
    getUser();
  }

  getUser() async {
    
    this.username = getPref('userName');
    print(this.username);
  }

  @override
  Widget build(BuildContext context) {
    final _body = Container(
      // width: MediaQuery.of(context).size.width,
      // padding: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          ProfileCard(),
          ButtonGroup()
        ],
      ),
    );

    // TODO: implement build
    return Scaffold(body: _body);
  }
}
