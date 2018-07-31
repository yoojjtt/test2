import 'package:flutter/material.dart';
import './sortCard_provider.dart';
import './sortPage/sortPage.dart';
class SortBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SortBarState();
  }
}

class SortBarState extends State<SortBar> {


  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final sortCardState = SortCardProvider.of(context);

    return Container(
        // alignment: Alignment.centerRight,
        height: 50.0,
        child: Padding(
      padding: EdgeInsets.only(top:10.0, right:10.0, left:10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            child: Text(sortCardState.myDate.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Container(
            child: Text(
            sortCardState.month.toString() + "월",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: RaisedButton(
              color: Colors.blue,
              child: Row(
                children: <Widget>[
                  Text(
                    "조건검색",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Image.asset('assets/control.png', fit: BoxFit.cover, height: 20.0, width: 20.0,)
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SortPage()),
                  );
              },
            ),
          )
        ],
      ),
    ));
  }
}
