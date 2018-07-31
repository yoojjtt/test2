import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:async';


Future<bool> confirmDialog1(BuildContext context, String name) {
  return showDialog<bool>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('$name 님 환영합니다.'),
          actions: <Widget>[
            new FlatButton(
              child: const Text('네'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            new FlatButton(
              child: const Text('아니오'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
        );
      });
}