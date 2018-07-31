import 'package:flutter/material.dart';
import '../../../../_style/style.dart';
import '../../../../_color/colors.dart';

class PointCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PointCardState();
  }
}

class PointCardState extends State<PointCard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: Colors.blueGrey[300],
      child: Container(
        child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
                padding: EdgeInsets.all(30.0),
                child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Text("내 포인트 : "),
              Text("10,000", style: pointTextStyle,),
              Text("점"),
            ],
          ),
              )
          
        ],
      ),
      
    ));
  }
}
