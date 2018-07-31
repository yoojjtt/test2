import 'package:flutter/material.dart';
import '../../../../_color/colors.dart';
import 'package:url_launcher/url_launcher.dart';


TextStyle _infoStyle = TextStyle(color:Colors.white,fontSize: 15.0, );

class CustomerServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _appBar = new AppBar(
      title: Center(child: Text("고객센터")),
      backgroundColor: linkerNavColor,
    );

    final _logo = Hero(
      tag: "LINKER",
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 50.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/logo_4.png"),
        ),
      ),
    );

    final _msg = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '고객센터',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final _msgMemo = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Linker를 이용해주셔서 감사합니다.",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final _contactInfo = Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
            child: Text(
          "010-8537-1398",
          style: TextStyle(color: Colors.orangeAccent, fontSize: 40.0),
        )));

    final _detailInfo = Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Text("상담기간 : AM 10:00 ~ PM 05:00",style:_infoStyle),
            Text("점심시간 : 12:00 ~13:00",style:_infoStyle),
            Text("토요일,일요일,공휴일 휴무입니다.",style:_infoStyle)
          ],
        ),
      ),
    );

    final _addressInfo = Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("주소 : 서울 특별시 중구 "),
            // Text("서울 특별시 중구 "),
            Text("사업자 번호 :123-456-789 "),
            // Text("123-456-789"),
            Text("통신판매 번호 : 123-456-789"),
            // Text("123-456-789"),
            
          ],
        ),
      ),
    );
    

    final _goToHome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              child: Center(
                child: Text(
                '전화걸기',
                style: TextStyle(
                    color: linkerBasicFont, fontSize: 30.0),
              ),
              ),
            ),
            color: linkerNavColor,
            onPressed: () {
              launch("tel://01085371398");
              // Navigator.of(context).pushNamed("/MainPage");
            },
          )),
    );

    final _body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.blue[900],
        Colors.blueGrey[700],
      ])),
      child: Column(
        children: <Widget>[
          _logo,
          _msg,
          _msgMemo,
          _contactInfo,
          _detailInfo,
          _addressInfo,
          _goToHome
        ],
      ),
    );

    return new Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}
