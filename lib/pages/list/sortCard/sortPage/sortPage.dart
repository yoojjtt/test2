import 'package:flutter/material.dart';
import '../../../../_color/colors.dart';

class SortPage extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return SortPageState();
    }
}

class SortPageState extends State<SortPage>{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build

      final _appBar = AppBar(
      title: Center(
        child: Text("조건검색", textAlign: TextAlign.center)
        ),
      leading: new IconButton(
          icon: Icon(Icons.close),
          onPressed: () { Navigator.pop(context);},
      ),
      // elevation: 0.7,
      backgroundColor: linkerNavColor,
      actions: <Widget>[
        FlatButton(
          child: Text("모두 초기화",style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),),
          onPressed: (){},
        ),
      ],
    );

    final _body = Column(
      children: <Widget>[
        Text("노임")
      ],
    );  
      return Scaffold(
        appBar:_appBar,
        body: _body,
      );
    }
}