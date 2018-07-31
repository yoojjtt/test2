import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

void main() => runApp(PrefPage());

class PrefPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Shared_Prefs Example'),
        ),
        body: PrefHome(),
      ),
    );
  }
}

class PrefHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PrefHomeState();
  }
}

class PrefHomeState extends State<PrefHome> {
  Future<SharedPreferences> _sPrefs = SharedPreferences.getInstance();
  final TextEditingController controller = TextEditingController();
  List<String> listOne, listTwo;
  String value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listOne = [];
    listTwo = [];
  }

  Future<Null> addString() async {
    final SharedPreferences prefs = await _sPrefs;
    listOne.add(controller.text);
    prefs.setStringList('list', listOne); // list 형태임
    prefs.setString('value',"test prefs");
    setState(() {
      controller.text = "";
    });
  }

  Future<Null> clearItems() async {
    final SharedPreferences prefs = await _sPrefs;
    prefs.clear();
    setState(() {
      listOne = [];
      listTwo = [];
    });
  }

  Future<Null> getStrings() async {
    final SharedPreferences prefs = await _sPrefs;
    listTwo = prefs.getStringList('list');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    getStrings(); // 초기에 build 될 때 불러야 있음
    return Center(
        child: ListView(
      children: <Widget>[
        TextField(
          controller: controller,
          decoration: InputDecoration(hintText: "타이핑 하세요..."),
        ),
        RaisedButton(
          child: Text("Submit"),
          onPressed: () {
            print("add String");
            addString();
          },
        ),
        RaisedButton(
          child: Text("Clear"),
          onPressed: () {
            print("clear String");
            clearItems();
          },
        ),
        Flex(
          direction: Axis.vertical,
          children: listTwo == null
              ? []
              : listTwo.map((String s) => Text(s)).toList(),
        )
      ],
    ));
  }
}
