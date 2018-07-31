import 'package:flutter/material.dart';

class Herologo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      
      return Column(
              children: <Widget>[
                Hero(
                  tag: "LINKER",
                  child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 48.0,
                      child: Image.asset('assets/logo_1.png')),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                SizedBox(height: 16.0),
                // Text('Linker'),
              ],
            );
      
      
    }
}