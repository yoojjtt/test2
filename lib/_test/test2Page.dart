import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Test2Page()));
}

class Test2Page extends StatefulWidget {
  // final String title;

//  TestPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new Test2PageState();
}

class Test2PageState extends State<Test2Page> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SliverStickyHeader(
      header: new Container(
        height: 60.0,
        color: Colors.lightBlue,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.centerLeft,
        child: new Text(
          'Header #0',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      sliver: new SliverList(
        delegate: new SliverChildBuilderDelegate(
          (context, i) => new ListTile(
                leading: new CircleAvatar(
                  child: new Text('0'),
                ),
                title: new Text('List tile #$i'),
              ),
          childCount: 4,
        ),
      ),
    );
  }
}
