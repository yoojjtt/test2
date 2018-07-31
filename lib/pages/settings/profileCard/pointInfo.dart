import 'package:flutter/material.dart';
import '../../../_style/style.dart';
import './pointPage/pointPage.dart';

class PointInfo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build

    final _btnGroup2 = ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
              FlatButton(
                child: Text("내 포인트 : 10,123 점"),
              
              ),
              RaisedButton(
                child: Padding(
                  child: Text("포인트 충전", style: pointBtnStyle,),
                  padding: EdgeInsets.all(0.0),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PointPage()),
                  );
                } ,
                color: Colors.lightBlue[800],
              ),              
              ],
            ),
          );


      return  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: <Widget>[
            _btnGroup2,
            
            
          ],
        );
    }
}