import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class SchedulePage extends StatefulWidget {
  final String value;
  // SchedulePage({Key key, this.value}) : super(key: key);

  State<StatefulWidget> createState() {
    // TODO: implement createState
    //StateWidget을 반환한다.
    //return null;

    return new SchedulePageState();
  }
}

class SchedulePageState extends State<SchedulePage> {
    
  void initState() {
    super.initState();
    print("init schedule page");
    
  }
  void handleNewDate(date) {
    print(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: new Container(
          margin: new EdgeInsets.symmetric(
            horizontal: 5.0,
            vertical: 10.0,
          ),
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              new Text('The Default Calendar:'),
              new Calendar(
                onDateSelected: (date) => handleNewDate(date),
              ),
              new Divider(
                height: 50.0,
              ),
              new Text('The Expanded Calendar:'),
              new Calendar(
                isExpandable: true,
              ),
              new Divider(
                height: 50.0,
              ),
              new Text('A Custom Weekly Calendar:'),
              new Calendar(
                onSelectedRangeChange: (range) => print(range),
                isExpandable: true,
                dayBuilder: (BuildContext context, DateTime day) {
                  return new InkWell(
                    onTap: () => print(day),
                    child: new Container(
                      decoration: new BoxDecoration(
                          border: new Border.all(color: Colors.black38)),
                      child: new Text(
                        day.day.toString(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      );
  }
}

