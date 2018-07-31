import 'package:flutter/material.dart';

class InputFieldArea extends StatelessWidget {
  String hint;
  bool obscure;
  IconData icon;
  String label;
  TextEditingController controller;

  
  InputFieldArea({this.hint, this.label, this.obscure, this.icon, this.controller});
  @override
  Widget build(BuildContext context) {
    return (new Container(
      decoration: new BoxDecoration(
        border: new Border(
          bottom: new BorderSide(
            width: 1.0,
            color: Colors.white24,
          ),
        ),
      ),
      child: new TextFormField(
        
        obscureText: obscure,
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: new InputDecoration(
          labelText: label,
           filled: true,
          // icon: new Icon(
          //   icon,
          //   color: Colors.white,
          // ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          // border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.black, fontSize: 15.0),
          // contentPadding: const EdgeInsets.only(
          //     top: 30.0, right: 30.0, bottom: 30.0, left: 5.0),
        ),
        controller: controller,
      ),
    ));
  }
}
