import 'package:flutter/material.dart';


class ProfileCardProvider extends InheritedWidget {
  ProfileCardProvider({
    Key key,
    this.userName,
    Widget child,
  }) : super(key: key, child: child);

  final String userName;
  final Function onPressed;

  @override
  bool updateShouldNotify(ProfileCardProvider oldWidget) {
    return userName != oldWidget.userName;
  }

  static ProfileCardProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ProfileCardProvider);
  }
}