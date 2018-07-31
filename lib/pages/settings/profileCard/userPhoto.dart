import 'package:flutter/material.dart';
import '../../../_style/style.dart';

class UserPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(0.0),
          child: Container(
            // margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                // color: Colors.black45 // 공간확인용
                ),
            child: Stack(
              alignment: const Alignment(0.6, 0.6),
              children: <Widget>[
                Positioned(
                  child: Padding(
                      padding: EdgeInsets.all(5.0), // 밖에 여백
                      child: photo(context)),
                ),
                // Positioned(
                //   // left:10.0,
                //   // top:1.0,
                //   right: -15.0,
                //   bottom: -2.0,
                //   // width:50.0,
                //   // height:50.0,
                //   child: photoEditButtn(context)
                // ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

Widget photoEditButtn(BuildContext context) {
  return Container(
    width: 50.0,
    height: 50.0,
    decoration: BoxDecoration(
      color: Colors.black45,
      shape: BoxShape.circle,
    ),
    child: FlatButton(
      child: Column(
        children: <Widget>[
          Text(
            "사진",
            style: photoEditTextStyle,
          ),
          Text(
            "수정",
            style: photoEditTextStyle,
          )
        ],
      ),
      onPressed: () {},
    ),
  );
}

Widget photo(BuildContext context) {
  return OutlineButton(
    padding: EdgeInsets.all(1.0), // outline button 안쪽여백
    child: Column(
      children: <Widget>[
        Hero(
          tag: "사진수정",
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/blank_photo.png"),
            ),
          ),
        ),
        RaisedButton(
          // padding: EdgeInsets.all(0.0),
          color: Colors.blueGrey,
          child: Text("사진 수정", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          onPressed: (){},
        )
      ],
    ),
    onPressed: () {},
  );
}
