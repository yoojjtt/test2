import 'package:flutter/material.dart';
import 'dart:core';

class Alert extends StatelessWidget {
  final String name;
  final double size;
  Alert(this.name, this.size);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    String _editTxt(String text, int index) {
      String val;
      String txt = text;
      List<String> txtArray;
      txtArray = txt.split(".");
      val = txtArray[index];

      return val;
    }

    Widget _buildAlert(BuildContext context, String name, double size) {
      return new AlertDialog(
        content: Container(
            width:200.0,
            height: 50.0,
            child: Column(
          children: <Widget>[
            Text(
              _editTxt(name, 0)+".",
              style: new TextStyle(fontSize: size),
            ),
            Text(
              _editTxt(name, 1)+")",
              style: new TextStyle(fontSize: size),
            ),

          ],
        ),

          )
      
        // actions: <Widget>[
        //   new FlatButton(
        //       onPressed: () {
        //         _dialogResult(MyDialogAction.yes);
        //       },
        //       child: new Text("네")),
        //   new FlatButton(
        //       onPressed: () {
        //         _dialogResult(MyDialogAction.no);
        //       },
        //       child: new Text("아니오")),
        // ],
      );
    }

    return _buildAlert(context, this.name, this.size);
  }
}
