import 'package:flutter/material.dart';
import './_box.dart';

class BoxTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Box(),
            Box(),
          ],
        ),
      ),
    );
  }
}

