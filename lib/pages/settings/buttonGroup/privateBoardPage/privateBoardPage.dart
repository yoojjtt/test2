import 'package:flutter/material.dart';
import '../../../../_color/colors.dart';

class PrivateBoardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PrivateBoardPageState();
  }
}

class PrivateBoardPageState extends State<PrivateBoardPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _appBar = new AppBar(
      title: Center(child: Text("1:1 문의", textAlign: TextAlign.center)),
      backgroundColor: linkerNavColor,
    );

    final _privateList = ListView(
      children: <Widget>[
        Card(
            child: Container(
          child: ListTile(
              leading: Icon(Icons.check),
              title: Text("글제목"),
              subtitle: Text(
                "글내용,글내용글내용글내용글내용글내용글내용",
                overflow: TextOverflow.ellipsis,
              ),
              trailing: RaisedButton(
                child: Text("확인", style: TextStyle(color: Colors.white)),
              )),
        )),
        Card(
            child: Container(
          child: ListTile(
              leading: Icon(Icons.check),
              title: Text("글제목"),
              subtitle: Text(
                "글내용,글내용글내용글내용글내용글내용글내용",
                overflow: TextOverflow.ellipsis,
              ),
              trailing: RaisedButton(
                child: Text("확인", style: TextStyle(color: Colors.white)),
              )),
        )),
        Card(
            child: Container(
          child: ListTile(
              leading: Icon(Icons.check),
              title: Text("글제목"),
              subtitle: Text(
                "글내용,글내용글내용글내용글내용글내용글내용",
                overflow: TextOverflow.ellipsis,
              ),
              trailing: RaisedButton(
                child: Text("확인", style: TextStyle(color: Colors.white)),
              )),
        )),
        Card(
            child: Container(
          child: ListTile(
              leading: Icon(Icons.check),
              title: Text("글제목"),
              subtitle: Text(
                "글내용,글내용글내용글내용글내용글내용글내용",
                overflow: TextOverflow.ellipsis,
              ),
              trailing: RaisedButton(
                child: Text("확인", style: TextStyle(color: Colors.white)),
              )),
        )),
        Card(
            child: Container(
          child: ListTile(
              leading: Icon(Icons.check),
              title: Text("글제목"),
              subtitle: Text(
                "글내용,글내용글내용글내용글내용글내용글내용",
                overflow: TextOverflow.ellipsis,
              ),
              trailing: RaisedButton(
                child: Text("확인", style: TextStyle(color: Colors.white)),
              )),
        )),
        Card(
            child: Container(
          child: ListTile(
              leading: Icon(Icons.check),
              title: Text("글제목"),
              subtitle: Text(
                "글내용,글내용글내용글내용글내용글내용글내용",
                overflow: TextOverflow.ellipsis,
              ),
              trailing: RaisedButton(
                child: Text("확인", style: TextStyle(color: Colors.white)),
              )),
        )),
        Card(
            child: Container(
          child: ListTile(
              leading: Icon(Icons.check),
              title: Text("글제목"),
              subtitle: Text(
                "글내용,글내용글내용글내용글내용글내용글내용",
                overflow: TextOverflow.ellipsis,
              ),
              trailing: RaisedButton(
                child: Text("확인", style: TextStyle(color: Colors.white)),
              )),
        )),
        Card(
            child: Container(
          child: ListTile(
              leading: Icon(Icons.check),
              title: Text("글제목"),
              subtitle: Text(
                "글내용,글내용글내용글내용글내용글내용글내용",
                overflow: TextOverflow.ellipsis,
              ),
              trailing: RaisedButton(
                child: Text("확인", style: TextStyle(color: Colors.white)),
              )),
        )),
      ],
    );

    final _submitBtn = RaisedButton(
      color: Colors.blue,
      child: Container(
          height: 60.0,
          width: MediaQuery.of(context).size.width - 32.0,
          // width: MediaQuery.fromWind
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("글쓰기",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold))
            ],
          )),
      onPressed: () {},
    );

    return Scaffold(
        appBar: _appBar,
        body: Stack(
          children: <Widget>[
            _privateList,
            Positioned(left: 1.0, bottom: 3.0, right: 1.0, child: _submitBtn)
          ],
        ));
  }
}
