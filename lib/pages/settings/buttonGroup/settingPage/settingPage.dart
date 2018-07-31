import 'package:flutter/material.dart';
import '../../../../_color/colors.dart';
import './terms.dart';
import '../../../../_util/showAlert.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingPageState();
  }
}

class SettingPageState extends State<SettingPage> {
  bool alarmEnabled = true;
  bool pushEnabled = true;
  bool workEnabled = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    _logoutMethod(){

      showDialog(context: context, child: ShowAlert("로그아웃 하시겠습니까?"));

    }

    final _appBar = new AppBar(
      title: Center(child: Text("설정", textAlign: TextAlign.center)),
      backgroundColor: linkerNavColor,
    );

    final _version = Container(
      height: 50.0,
      decoration: new BoxDecoration(
        color: Colors.blueGrey,
        border: new Border(
          bottom: new BorderSide(width: 1.0, color: Colors.grey),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("버전 정보", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("0.0.01", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              )
            ],
          )
        ],
      ),
    );

    Widget _buildAlarm(
        BuildContext context, String val, bool alarmVal, String type) {
      return Container(
        child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(val),
                Switch(
                    onChanged: (bool val) {
                      setState(() {
                        switch (type) {
                          case "alarm":
                            alarmEnabled = val;
                            break;
                          case "push":
                            pushEnabled = val;
                            break;
                          case "work":
                            workEnabled = val;
                            break;
                        }
                        print(alarmVal);
                      });
                    },
                    activeColor: Colors.green,
                    activeTrackColor: Colors.greenAccent[400],
                    value: alarmVal),
              ],
            )),
        decoration: new BoxDecoration(
          color: Colors.white,
          border: new Border(
            bottom: new BorderSide(width: 1.0, color: Colors.grey),
          ),
        ),
      );
    }

    final _setAlarm = Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Container(
            // height: 200.0,
            decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border(
                bottom: new BorderSide(width: 1.0, color: Colors.grey),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(                  
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "푸쉬설정",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    
                  ),
                  decoration: new BoxDecoration(
                    color:Colors.blueGrey,
                    border: new Border(
                      bottom: new BorderSide(width: 1.0, color: Colors.grey),
                    ),
                  ),
                ),
                _buildAlarm(context, '알림설정', alarmEnabled, "alarm"),
                _buildAlarm(context, '메세지설정', pushEnabled, "push"),
                _buildAlarm(context, '근무추천', workEnabled, "work"),
              ],
            ))
      ],
    );

    Widget _buildAgreement(BuildContext context, String name) {
      return Container(
          decoration: new BoxDecoration(
            color: Colors.white,
            border: new Border(
              bottom: new BorderSide(width: 1.0, color: Colors.grey),
            ),
          ),
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(name),
                  RaisedButton(
                    child: Text("약관보기"),
                    onPressed: () {
                      
                    
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TermsPage(name)),
                      );
                    },
                  )
                ],
              )));
    }

    final _agreement = Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Container(
            // height: 200.0,
            decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border(
                bottom: new BorderSide(width: 1.0, color: Colors.grey),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "약관",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: new BoxDecoration(
                    color: Colors.blueGrey,
                    border: new Border(
                      bottom: new BorderSide(width: 1.0, color: Colors.grey),
                    ),
                  ),
                ),
                _buildAgreement(context, "서비스 이용약관"),
                _buildAgreement(context, "위치기반서비스 이용약관"),
                _buildAgreement(context, "개인정보취급방침")
              ],
            ))
      ],
    );

    final _logout = Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            color: Colors.white,
            // border: new Border(
            //   bottom: new BorderSide(width: 1.0, color: Colors.grey),
            // ),
          ),
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: RaisedButton(
                      child: Text("로그아웃"),
                      onPressed: () {
                        _logoutMethod();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: RaisedButton(
                      child: Text("회원탈퇴"),
                      onPressed: () {},
                    ),
                  )
                ],
              )),
        )
      ],
    );

    final _space = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Container(
        color: Colors.yellowAccent,
      ),
    );

    final _body = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _version,
        _space,
        _setAlarm,
        _space,
        _agreement,
        _space,
        _logout
      ],
    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}
