import 'package:flutter/material.dart';
import './userInfo.dart';
import './userPhoto.dart';
import './pointInfo.dart';
import './profileCard_provider.dart';

import 'dart:async';
import '../../../_service/apiFunction.dart';

class ProfileCard extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //StateWidget을 반환한다.
    //return null;
    return new ProfileCardState();
  }
}

class ProfileCardState extends State<ProfileCard> {
  String _userName;
  void initState() {
    super.initState();

    getUser();
  }

  void dispose() {
    getUser().dispose();
    super.dispose();
  }

  getUser() async {
    var val = await getPref("userName");
    //중요한 컨셉: sharedPreference 쓸 때 비동기이므로 child 보낼때 setState를 해줘야 됨, 아니면 null로간다.
    setState(() {
      if (val == null) {
        print("사용자 없음");
      } else {
        // print("사용자 $name");
        _userName = val;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ProfileCardProvider(
      userName: _userName == null ? "없음" : _userName,
      child: Card(
          child: Container(
        margin: EdgeInsets.only(top: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                UserPhoto(),
                UserInfo(),
              ],
            ),
            Divider(),
            PointInfo()
          ],
        ),
      )),
    );
  }
}
