import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class RowCell extends StatelessWidget {
  final row;
  //Constructor

  RowCell(this.row);

  final oCcy = new NumberFormat("#,##0", "en_US");

  // void initState() {
  //   super.initState();
    
  // }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var title = row["title"];
    var payment = int.parse(row["pay"]);
    var workDate = row["workDate"];
    var location = row["location"];


    final _cellTitle = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        
        Container(
          // padding: const EdgeInsets.only(bottom: 8.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            
            color: Colors.lightBlue[800],
            // shape: BoxShape.rectangle,
            // borderRadius: BorderRadius.circular(8.0),
            
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                // offset: new Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );



    final _workDate = Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5.0),
        ),
        Icon(
          Icons.calendar_today,
          color: Colors.blueGrey[300],
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
        Text(
          "근로일 : " + workDate,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[800],
          ),
        ),
      ],
    );




    final _workDate2 = new Flexible(
              child: new Container(
                // padding: new EdgeInsets.only(right: 13.0),
                child: new Text(
                  "근로일 : " + workDate,
                  overflow: TextOverflow.ellipsis,
                  
                ),
              ),
            );

    final _location = Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5.0),
        ),
        Icon(
          Icons.location_searching,
          color: Colors.blueGrey[300],
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
        Text(
          "위치 : " + location,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[800],
          ),
        ),
      ],
    );




    final _pay = Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        Padding(
          padding: EdgeInsets.all(5.0),
        ),
        Icon(
          Icons.attach_money,
          color: Colors.blueGrey[300],
          
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
        // Padding(
        //   padding: EdgeInsets.all(5.0),
        // ),
        Text(
          // "급여 : " + row["pay"],
          "급여 : " + oCcy.format(payment) + "원",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[700],
          ),
        ),
      ],
    );




    return new Container(
      // padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          _cellTitle,
          Row(
            children: <Widget>[
              Flexible(
                // crossAxisAlignment: CrossAxisAlignment.start,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    
                    children: <Widget>[
                      _workDate,                    
                      _location,
                      _pay,
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // textDirection: TextDirection.rtl,
                children: [
                  
                  Text(
                    '상세보기',
                    style: TextStyle(color: Colors.black45, fontSize: 15.0),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
