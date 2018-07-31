import 'package:flutter/material.dart';


class SortCardProvider extends InheritedWidget {
  SortCardProvider({
    Key key,
    this.myDate,
    this.month,
    this.lastDayInt,
    this.onPressed,
    Widget child,
  }) : super(key: key, child: child);

  final String myDate;
  final int year;
  final int month;
  final int lastDayInt;
  final int day;
  final Function onPressed;

  @override
  bool updateShouldNotify(SortCardProvider oldWidget) {
    return myDate != oldWidget.myDate;
  }

  static SortCardProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(SortCardProvider);
  }
}