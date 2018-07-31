import 'package:flutter/material.dart';



class BottomNavState extends InheritedWidget {
  BottomNavState({
    Key key,  
    this.index,  
    this.onTap,
    Widget child,
  }) : super(key: key, child: child);

  final int index;
  final Function onTap;

  @override
  bool updateShouldNotify(BottomNavState oldWidget) {
    return index != oldWidget.index;
    // return null;
  }

  static BottomNavState of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(BottomNavState);
  }
}
