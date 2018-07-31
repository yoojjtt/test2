import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String buttonName;
  final VoidCallback onTap;

  double height;
  double width;
  double bottomMargin;
  double borderWidth;
  Color buttonColor;
  Color splashcolor;
  Color highlightColor;
  bool isLoading;

  TextStyle textStyle = new TextStyle(
      color:Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.bold);

  //passing props in react style
  RoundedButton(
      {this.buttonName,
        this.onTap,
        this.height,
        this.bottomMargin,
        this.borderWidth,
        this.width,
        this.buttonColor,        
      this.splashcolor,
      this.highlightColor,
      this.isLoading

      });

  @override
  Widget build(BuildContext context) {
    if (borderWidth != 0.0)
      return (new InkWell(
        onTap: onTap,
        child: new Container(
          width: width,
          height: height,
          margin: new EdgeInsets.only(bottom: bottomMargin),
          alignment: FractionalOffset.center,
          decoration: new BoxDecoration(
              color: buttonColor,
              borderRadius: const BorderRadius.all(const Radius.circular(30.0)),
              border: new Border.all(
                  color: const Color.fromRGBO(221, 221, 221, 1.0),
                  width: borderWidth)),
          child: isLoading
                    ? Container(
                        width: 50.0,
                        height: 50.0,
                        child: new CircularProgressIndicator(),
                      ):new Text(buttonName, style: textStyle),
        ),
        splashColor: splashcolor,
          highlightColor:highlightColor,
      ));
    else
      return (new InkWell(
        onTap: onTap,
        child: new Container(
          
          width: width,
          height: height,
          margin: new EdgeInsets.only(bottom: bottomMargin),
          alignment: FractionalOffset.center,
          decoration: new BoxDecoration(
            
            color: buttonColor,
            borderRadius: const BorderRadius.all(const Radius.circular(30.0)),
            border: new Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          child: isLoading
                    ? Container(
                        width: 25.0,
                        height: 25.0,
                        child: new CircularProgressIndicator(),
                      ):new Text(buttonName, style: textStyle),
        ),
      ));
  }
}