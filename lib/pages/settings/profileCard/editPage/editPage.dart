import 'package:flutter/material.dart';
import '../../../../_color/colors.dart';
import '../../../../_service/apiFunction.dart';
import 'package:dio/dio.dart';

class EditPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return EditPageState();
  }
}

class EditPageState extends State<EditPage> {
  @override
  String _email, _username, _password;

  final formKey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();
  bool loggedIn = false;

  @override
  void initState() {
    // TODO: implement initState

    getUser();
  }

  getUser() async {
    var name = await getPref("userName");
    var id = await getPref("userId");

    //중요한 컨셉: sharedPreference 쓸 때 비동기이므로 child 보낼때 setState를 해줘야 됨, 아니면 null로간다.
    setState(() {
      if (id == null) {
        print("사용자 없음");
      } else {
        // print("사용자 $name");
        print("사용자 $id");
      }
    });
    var d = {
      "key": id,
      "startDay": "",
      "endDay": "",
      "srcWord": "",
      "type": "",
    };
    Response response = await postMethod("worker", "R", d);

    if (response.statusCode == 200) {
      print(response.data);
      var d = response.data["data"][0][0];
      print(d);
      if (d["return_code"] == "200") {
        print(d["name"]);
        print(d["phone"]);
        print(d["age"]);
        print(d["birth"]);
        print(d["serviceAgree"]);
        print(d["locationAgree"]);
        print(d["privateAgree"]);
        print(d["address1"]);
      } else {
        _username = d["name"];
        print(d["name"]);
        print(d["phone"]);
        print(d["age"]);
        print(d["birth"]);
        print(d["serviceAgree"]);
        print(d["locationAgree"]);
        print(d["privateAgree"]);
        print(d["address1"]);
        setState(() {
          _username = d["name"];
        });
      }
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    // String _cell1, _cell2, _cell3, _birthY, _birthM, _birthD;

    final _emailForm = TextFormField(
      autocorrect: false,
      decoration: InputDecoration(
        labelText: "이메일 : ",
      ),
      validator: (str) => !str.contains('@') ? "유효하지 않은 이메일 주소입니다!" : null,
      onSaved: (str) => _email = str,
      // initialValue: ,
    );

    final _nameForm = TextFormField(
      autocorrect: false,
      decoration: InputDecoration(
        labelText: "이름 : ",
      ),
      validator: (str) => str.length < 3 ? "이름을 5자 이상 입력하세요." : null,
      onSaved: (str) => _username = str,
      initialValue: this._username,
    );

    final _passForm = TextFormField(
      autocorrect: false,
      decoration: InputDecoration(
        labelText: "비밀번호 : ",
      ),
      validator: (str) => str.length < 7 ? "비밀번호을 8자 까지만 입력하세요." : null,
      onSaved: (str) => _password = str,
      obscureText: true,
    );

    final _submitBtn = RaisedButton(
      child: Text("가입하기"),
      onPressed: onPressed,
      color: linkerSubmitBtnColor,
    );

    final _afterView = Center(
      child: Column(
        children: <Widget>[
          Text("환영합니다. 회원가입되었습니다. $_username"),
          RaisedButton(
            child: Text("메인화면"),
            onPressed: () {
              setState(() {
                loggedIn = true;
              });
            },
            color: linkerSubmitBtnColor,
          )
        ],
      ),
    );

    final _appBar = new AppBar(
      title: Center(child: Text("내정보 수정")),
      backgroundColor: linkerNavColor,
    );

    // TODO: implement build
    return new Scaffold(
      key: mainKey,
      // backgroundColor: Colors.orange[50],
      appBar: _appBar,
      body: Padding(
          padding: EdgeInsets.all(10.0),
          child: loggedIn == false
              ? Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      _emailForm,
                      _nameForm,
                      _passForm,
                    ],
                  ),
                )
              : _afterView),
    );
  }

  void onPressed() {
    var form = formKey.currentState;

    if (form.validate()) {
      form.save();
      setState(() {
        loggedIn = true;
      });

      var snackbar = SnackBar(
        content: Text('사용자 명 : $_username, 이메일 : $_email, 비밀번호 : $_password'),
        duration: Duration(milliseconds: 5000),
      );
      mainKey.currentState.showSnackBar(snackbar);
    }
  }
}
