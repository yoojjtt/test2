import 'package:flutter/material.dart';
import 'dart:async';

import './pages/loginPage/loginPage.dart';
import './pages/welcomePage.dart';
import './pages/mainPage.dart';
import './pages/registerPage/registerPage.dart';
import './pages/schedule/schedulePage.dart';
import './pages/alarmPage.dart';
import './pages/settings/settingsPage.dart';

//Text 용
import '_test/testPage.dart';
import '_test/test2Page.dart';
import '_test/prefPage_test.dart';
import '_test/_inheritPage_test.dart';

import './_service/apiFunction.dart';


void main() => runApp(new MaterialApp(
      theme: ThemeData(
        
          primaryColor: Colors.grey[900], accentColor: Colors.grey[900]),      
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        "/LoginPage": (BuildContext context) => new LoginPage(),        
        "/WelcomePage": (BuildContext context) => new WelcomePage(),
        "/MainPage": (BuildContext context) => new MainPage(),
        "/RegisterPage": (BuildContext context) => new RegisterPage(title: '회원가입'),
        "/SchedulePage": (BuildContext context) => new SchedulePage(),
        "/AlarmPage": (BuildContext context) => new AlarmPage(),
        "/SettingsPage": (BuildContext context) => new SettingsPage(),
        "/TestPage": (BuildContext context) => new TestPage(),
        "/Test2Page": (BuildContext context) => new Test2Page(),
        "/PrefPage": (BuildContext context) => new PrefPage(),
        "/InheritPage": (BuildContext context) => new InheritMyApp(),
        
        
      },
    ));

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

enum MyDialogAction { yes, no, maybe }

class _SplashScreenState extends State<SplashScreen> {
  

  void initState()  {
    super.initState();

    Timer(Duration(seconds: 3), () {
      print("Splash Done ~! Go to Home ~");    
      //유저체크안하면 테스트모드
      getUser();
      // Navigator.of(context).pushNamed("/MainPage");
    });
    // Timer.periodic(new Duration(milliseconds: 1000), (Timer timer) {
    
    //   getUser();
      
    // });
  }
  getUser() async {
    var val = await getPref("userName");
    if(val == null){
      Navigator.of(context).pushNamed("/LoginPage");
    }else{
      Navigator.of(context).pushNamed("/WelcomePage");
    }
    // setState(() {});
  }

  

  
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.redAccent),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(Icons.people,
                            color: Colors.greenAccent, size: 50.0)),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text("Linker",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold))
                  ],
                ))),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "Linker 로 모든 일을 연결해드립니다.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        )
      ],
    ));
  }
}
