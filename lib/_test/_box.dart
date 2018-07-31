import 'package:flutter/material.dart';
import './_inheritPage_test.dart';

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorState = ColorState.of(context);
    return GestureDetector(
      onTap: colorState.onTap,
      //onVerticalDragUpdate: (d) => print('dragging vertical'),
      //onHorizontalDragUpdate: (d) => print('dragging horizontal'),
      child: Container(
        width: 50.0,
        height: 50.0,
        margin: EdgeInsets.only(left: 100.0),
        color: colorState.color,
      ),
    );
  }
}