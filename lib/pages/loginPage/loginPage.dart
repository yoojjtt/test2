import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:async';
import '../../_util/alert.dart';
import './components/Roundedbutton.dart';
import './components/Herologo.dart';
import './components/InputFieldArea.dart';
import '../../_service/apiFunction.dart';
import '../../_service/alertFunction.dart';


void main() {
  runApp(new MaterialApp(
    home: new LoginPage(),
    // theme: _kShrineTheme,
  ));
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  
  
  var _isLoading = false; // private value라서 언더바,

  @override
  void initState() {
    super.initState();

    _usernameController.addListener(_printLatestValue);
    _passwordController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is removed from the Widget tree
    _usernameController.removeListener(_printLatestValue);
    _usernameController.dispose();
    _passwordController.removeListener(_printLatestValue);
    _passwordController.dispose();
    super.dispose();
  }

  /** Method  */
  void _dialogResult(bool value) {
    print("select $value");
    
    setState(() {
      _isLoading = false; // setState는 RealWorldState의 메소드를 변하게할 수 있다.
    });
    
    if (value) {
      Navigator.of(context).pushNamed("/WelcomePage");
    }else{
      Navigator.pop(context);
    }
  }
  

  _printLatestValue() {
    print("핸드폰: ${_usernameController.text}");
    print("비밀번호: ${_passwordController.text}");
  }
  _fetchData() async {
    var d = {
        "login_id": _usernameController.text,
        "login_pass": _passwordController.text
      };
    Response response = await postMethod("worker","mobile_login",d);
  
    if (response.statusCode == 200) {
      _usernameController.clear();
      _passwordController.clear();
      print(response.data);
      var d = response.data;
      if (d["return_code"] == "200") {

        showDialog(context: context, child: Alert(d["msg"], 15.0));

      } else {

        confirmDialog1(context, d["name"]).then((val) {
          print(val);
          print("done");
          setPref("userId", d["id"]);
          setPref("userName", d["name"]);  // preference 저장
          _dialogResult(val);
        });
        
        
      }      
      
      
      setState(() {
        _isLoading = false;
      });

    } else {
      _usernameController.clear();
      _passwordController.clear();
      setState(() {
        _isLoading = false; 
      });

      Navigator.pop(context);
    }
  }  
  

/** build up  */
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final _loginBtn2 = RoundedButton(
      buttonName: '로그인',
      onTap: () {
        setState(() {
          print("start");
          _isLoading = true;
          _fetchData();
        });
      },
      highlightColor: const Color.fromRGBO(255, 255, 255, 0.1),
      width: screenSize.width,
      height: 50.0,
      bottomMargin: 10.0,
      borderWidth: 0.0,
      buttonColor: Colors.blueAccent,
      isLoading: _isLoading,
    );

    final _registerBtn2 = RoundedButton(
      buttonName: '회원가입',
      onTap: () {
        _usernameController.clear();
        _passwordController.clear();
        Navigator.of(context).pushNamed("/RegisterPage");
      },
      highlightColor: const Color.fromRGBO(255, 255, 255, 0.1),
      width: screenSize.width,
      height: 50.0,
      bottomMargin: 10.0,
      borderWidth: 0.0,
      buttonColor: const Color.fromRGBO(100, 100, 100, 1.0),
      isLoading: false,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Herologo(),           
            InputFieldArea(
              hint: "",
              label: "핸드폰 : ",
              obscure: false,
              icon: Icons.person_outline,
              controller: _usernameController,
            ),
            SizedBox(height: 12.0),
            InputFieldArea(
              hint: "",
              label: "비밀번호 : ",
              obscure: true,
              icon: Icons.person_outline,
              controller: _passwordController,
            ),
            SizedBox(height: 50.0),
            _loginBtn2,
            SizedBox(height: 10.0),
            _registerBtn2,
            Padding(padding: EdgeInsets.only(top: 30.0)),
          ],
        ),
      ),
    );
  }
}


