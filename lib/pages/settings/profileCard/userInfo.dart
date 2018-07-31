import 'package:flutter/material.dart';
import '../../../_color/colors.dart';
import '../../../_style/style.dart';
import './editPage/editPage.dart';
import './profileCard_provider.dart';

class UserInfo extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return UserInfoState();
    }
}
class UserInfoState extends State<UserInfo>{


  
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
    final profileCardState = ProfileCardProvider.of(context);
    String userName = profileCardState.userName.toString();

    // TODO: implement build
    final _btn = Padding(
      child: OutlineButton(
        child: Padding(
          child: Text("내정보 수정", style: btnStyle),
          padding: EdgeInsets.all(0.0),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditPage()),
          );
        },
        color: linketEditBtnColor,
      ),
      padding: EdgeInsets.only(top:0.0, right: 0.0, ),
    );


    final _textGroup = Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(userName + "(31세)", style: nameStyle),
                    _btn
                  ],
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text("경기도 용인시 처인구 백암면 황새물로 53도 용인시 처인구 백암면 황새물로", style:addressStyle),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text("평균급여 : 160,000 ", style: payStyle),
              )
            ],
          );





    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          // Align(
          //   alignment: Alignment.centerRight,
          //   child: _btn,
          // ),          
          _textGroup
        ],
      ),
    );
  }
}

  

