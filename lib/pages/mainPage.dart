import 'package:flutter/material.dart';
import './list/listPage.dart' as listPage;
import './schedule/schedulePage.dart' as schedulePage;
import './settings/settingsPage.dart' as settingsPage;
import '../_color/colors.dart';


class MainPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //StateWidget을 반환한다.
    //return null;
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
  
  
  TabController controller;
  var title = "LINKER";
  
  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      controller = TabController(vsync: this,length: 3);
    }
  @override
    void dispose() {
      // TODO: implement dispose
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {

    
    final _appBar = AppBar(
      title: Center(
        child: Text(title, textAlign: TextAlign.center)
        ),
      leading: new IconButton(
          icon: Image.asset('assets/logo_4.png'),
          onPressed: () {},
      ),
      // elevation: 0.7,
      backgroundColor: linkerNavColor,
      actions: <Widget>[
        new IconButton(
            icon: new Icon(Icons.alarm),
            onPressed: () {
              setState(() {
                print("알람 페이지 ");
                Navigator.of(context).pushNamed("/AlarmPage");
              });
            }),
      ],
    );

    

    return MaterialApp(
        home: Scaffold(
            appBar: _appBar,
            body: TabBarView(
              controller: controller,
              children: <Widget>[
                schedulePage.SchedulePage(),
                listPage.ListPage(),                
                settingsPage.SettingsPage()
            
              ],
            ),
            bottomNavigationBar: Material(
              color: linkerNavColor,
              child: TabBar(
                controller: controller,
                tabs: <Widget>[
                  Tab( icon: Icon(Icons.calendar_today), text: "나의 일정"),
                  Tab( icon: Icon(Icons.search), text: "일자리 검색"),
                  Tab( icon: Icon(Icons.settings), text: "설정"),
                  
                ],
              ),
            ),
            
          )
        );
  }
}

