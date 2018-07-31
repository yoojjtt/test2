import 'package:flutter/material.dart';
import '../../../_color/colors.dart';

class TermsPage extends StatelessWidget{

  final String title;

  TermsPage(this.title);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      final _contents =  Column(
        children: <Widget>[
          Text(this.title)
        ],
      );
      
      
      final _appBar = new AppBar(
      title:  Text(this.title, textAlign: TextAlign.center),
      backgroundColor: linkerNavColor,
      
    );
      return Scaffold(
        appBar: _appBar,
        body: _contents,
      );
    }
}