import 'package:flutter/material.dart';
import '../_model/alarmMsg.dart';
import '../_color/colors.dart';

class AlarmPage extends StatefulWidget {
  final String value;
  // SchedulePage({Key key, this.value}) : super(key: key);

  State<StatefulWidget> createState() {
    // TODO: implement createState
    //StateWidget을 반환한다.
    //return null;

    return new AlarmPageState();
  }
}

class AlarmPageState extends State<AlarmPage> {

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar:  AppBar(
      title: new Text("알림"),
      elevation: 0.7,
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
    ),
        body:Container(
          child: ListView.builder(
            itemCount: alarms.length,
            itemBuilder: (context,i){
              var alarm = alarms[i];
              return Container(
                child: Card(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlatButton(
                      padding: EdgeInsets.all(0.0),
                      child:  ListTile(
                        leading: alarm.icon,
                        title: alarm.title,
                        subtitle: Text(alarm.content),
                        trailing: RaisedButton(
                          child: Text("확인", style: TextStyle(color: Colors.white)),
                        )),
                      onPressed: (){
                        print(i);
                      },
                    )
                  ],
                ),
              ));
            },
          ),
        )
      );
    }
}

