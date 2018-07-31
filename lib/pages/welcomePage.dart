import 'package:flutter/material.dart';
import '../_color/colors.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _logo = Hero(
      tag: "LINKER",
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/logo_4.png"),
        ),
      ),
    );

    final _msg = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Linker',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final _msgMemo = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "안녕하세요 Linker 모바일에 오신것을 환영합니다. Linker앱은 건설직군 일자리를 일용직 근로자에게 일자리를 실시간으로 원격제공합니다.",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final _goToHome = Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          child: Text(
            '메인화면',
            style:
                TextStyle(color: linkerBasicFont, fontWeight: FontWeight.bold),
          ),
          color: linkerNavColor,
          onPressed: () {
            Navigator.of(context).pushNamed("/MainPage");
          },
        ));

    final _body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.grey[900],
        Colors.grey[700],
      ])),
      child: Column(
        children: <Widget>[_logo, _msg, _msgMemo, _goToHome],
      ),
    );

    return new Scaffold(
      body: _body,
    );
  }
}
