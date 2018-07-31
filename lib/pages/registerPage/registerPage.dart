import 'package:flutter/material.dart';
import './components/Roundedbutton.dart';
import './components/Terms.dart';
import '../../_service/validationFunction.dart';

void main() {
  runApp(new MaterialApp(
    title: "회원가입~",
    home: new RegisterPage(),
    theme: ThemeData(
        primaryColor: Colors.blueGrey[300], primarySwatch: Colors.indigo),
  ));
}

TextStyle textStyle = new TextStyle(
    color: const Color.fromRGBO(255, 255, 255, 0.4),
    fontSize: 16.0,
    fontWeight: FontWeight.bold);

class RegisterPage extends StatefulWidget {
  final String title;

  RegisterPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  String _email, _cell, _username, _password;

  final formKey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();
  bool loggedIn = false;

  bool _autovalidate1 = false;
  bool allChecked = false;
  bool serviceChecked = false;
  bool locationChecked = false;
  bool privateChecked = false;

  // String _validatePhone(String value) {
  //   // _formWasEdited = true;
  //   final RegExp phoneExp = new RegExp(r'/^[0-9]*$/');
  //   if (value.isEmpty) {
  //     return '핸드폰은 필수입니다.';
  //   }
  //   if (phoneExp.hasMatch(value)) {
  //     return ' 숫자만 입력해주세요.';
  //   }

  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    void showInSnackBar(String value) {
      mainKey.currentState.showSnackBar(new SnackBar(content: new Text(value)));
    }

    _handleSubmitted1() async {
      final FormState form = formKey.currentState;
      if (!form.validate()) {
        _autovalidate1 = true;
        showInSnackBar('지시에 맞게 다시작성후에 제출해주세요.');
      } else {
        form.save();
        onPressed();
        // user1.location=null;
        // user1.groupsIamin=[];
        // // users.add(user1);
        // var userjson= jsonCodec.encode(user1);
        // print("userjson:${userjson}");
        // final Map usrmap=await getUsers();
        // usrmap.forEach((k,v){
        //   if(v.EmailId==user1.EmailId){
        //     userexists=true;
        //   }
        // });
        // if(userexists==false){
        //   await httpClient.post('https://fir-trovami.firebaseio.com/users.json',body: userjson);
        // } else {
        //   showInSnackBar('User already exits');
        // }
        // Navigator.of(context).pop();
      }
    }

    onChange(bool val, String type) {
      setState(() {
        // checked = val;

        switch (type) {
          case "service":
            serviceChecked = val;
            break;
          case "location":
            locationChecked = val;
            break;
          case "private":
            privateChecked = val;
            break;
          case "all":
            serviceChecked = val;
            privateChecked = val;
            locationChecked = val;
            allChecked = val;
            break;
        }
        print("service : $serviceChecked");
        print("location : $locationChecked");
        print("private : $privateChecked");
        print("all : $widget.allChecked");
        if (serviceChecked == false ||
            locationChecked == false ||
            privateChecked == false) {
          allChecked = false;
        } else {
          allChecked = true;
        }
      });
    }

    final Size screenSize = MediaQuery.of(context).size;
    // String _cell1, _cell2, _cell3, _birthY, _birthM, _birthD;

 

    final _cellForm = TextFormField(
      autocorrect: true,
      decoration: InputDecoration(
        // filled: true,
        labelText: "휴대폰 : ",
        // hintText: '휴대폰',
        icon: new Icon(Icons.phone),
      ),
      validator: validatePhone,
      onSaved: (str) => _cell = str,
    );

    final _nameForm = TextFormField(
      autocorrect: false,
      decoration: InputDecoration(
        labelText: "이름 : ",
        // hintText: '이름',
        icon: new Icon(Icons.person),
        // labelStyle: textStyle
      ),
      validator: (str) => str.length < 3 ? "이름을 3자 이상 입력하세요." : null,
      onSaved: (str) => _username = str,
    );

    final _passForm = TextFormField(
      autocorrect: false,
      decoration: InputDecoration(
        labelText: "비밀번호 : ",
        //  hintText: '비밀번호',
        icon: new Icon(Icons.lock),
        // labelStyle: textStyle
      ),
      validator: (str) => str.length < 7 ? "비밀번호을 8자 까지만 입력하세요." : null,
      onSaved: (str) => _password = str,
      obscureText: true,
    );

    final _afterView = Center(
      child: Column(
        children: <Widget>[
          Text("환영합니다. 회원가입되었습니다. $_username"),
          RaisedButton(
            child: Text("메인화면"),
            onPressed: () {
              setState(() {
                loggedIn = false;
              });
            },
          )
        ],
      ),
    );

    // TODO: implement build
    return new Scaffold(
      key: mainKey,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Padding(
          padding: EdgeInsets.all(10.0),
          child: loggedIn == false
              ? Form(
                  key: formKey,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    children: <Widget>[
                      Term(
                        allChecked: allChecked,
                        privateChecked: privateChecked,
                        locationChecked: locationChecked,
                        serviceChecked: serviceChecked,
                        onChange: onChange,
                      ),
                      new Container(
                        child: _nameForm,
                        padding: const EdgeInsets.only(
                            bottom: 15.0, top: 0.0, right: 20.0),
                      ),
                      new Container(
                        child: _cellForm,
                        padding: const EdgeInsets.only(
                            bottom: 15.0, top: 0.0, right: 20.0),
                      ),
                      new Container(
                        child: _passForm,
                        padding: const EdgeInsets.only(
                            bottom: 15.0, top: 0.0, right: 20.0),
                      ),
                      new RoundedButton(
                        buttonName: '회원가입',
                        onTap: _handleSubmitted1,
                        width: screenSize.width,
                        height: 50.0,
                        bottomMargin: 10.0,
                        borderWidth: 0.0,
                        buttonColor: Colors.transparent,
                      ),
                    ],
                  ))
              : _afterView),
    );
  }

  void onPressed() {
    var form = formKey.currentState;

    if (!allChecked) {
      var snackbar = SnackBar(
        content: Text(
          '약관에 모두 동의하셔야합니다.',
          style: TextStyle(color: Colors.red),
        ),
        duration: Duration(milliseconds: 5000),
      );
      mainKey.currentState.showSnackBar(snackbar);
    } else {
      if (form.validate()) {
        form.save();
        setState(() {
          loggedIn = true;
        });
        print(
            '전체동의 : $allChecked, 서비스동의 : $serviceChecked, 위치동의 : $locationChecked, 개인동의 : $privateChecked');

        var snackbar = SnackBar(
          content: Text('사용자 명 : $_username, 이메일 : $_email, 비밀번호 : $_password'),
          duration: Duration(milliseconds: 5000),
        );
        mainKey.currentState.showSnackBar(snackbar);
      }
    }
  }
}
