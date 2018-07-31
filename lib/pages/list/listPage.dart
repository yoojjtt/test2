import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import './row_cell.dart';
import './rowDetailPage.dart';
import './sortCard/sortCard.dart';

class ListPage extends StatefulWidget {
  // List workList = [];

  // ListPage({Key key, this.workList}) : super(key: key);

  State<StatefulWidget> createState() {
    // TODO: implement createState
    //StateWidget을 반환한다.
    //return null;
    return new ListPageState();
  }
}

class ListPageState extends State<ListPage> {
  String baseUrl = "http://220.230.113.201:3000/workList_info/ajax.json";
  var _isLoading = true; // private value라서 언더바,
  var rows;

  void initState() {
    super.initState();
    print("init list page");
    _fetchData();
  }
  void dispose() {
    _fetchData().dispose();
    super.dispose();
  }

  _fetchData() async {
    Dio dio = new Dio();
    Response response = await dio.post(baseUrl, data: {
      "gubun": "R",
      "data": {
        "key": 0,
        "startDay": "",
        "endDay": "",
        "srcWord": "all",
        "type": "all"
      }
    });
    // print(response.data);
    // print(response.data.toString());
    // print(response.data);
    // print(response.headers);
    // print(response.request);
    // print(response.statusCode);
    // final map json.decode(response.body);
    // var map = JSON.decode(response.data);
    // print(map);

    if (response.statusCode == 200) {
      // print(this.rows);
      this.rows = response.data["data"][0];

      setState(() {
        _isLoading = false; // setState는 RealWorldState의 메소드를 변하게할 수 있다.
      });
    } else {
      setState(() {
        _isLoading = false; // setState는 RealWorldState의 메소드를 변하게할 수 있다.
      });
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var _list = Center(
      child: _isLoading
          ? new CircularProgressIndicator()
          : new ListView.builder(
              itemCount: this.rows != null ? this.rows.length : 0,
              itemBuilder: (context, i) {
                final obj = this.rows[i];
                // if (i == 0) {
                //     // return the header
                //     return new Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: <Widget>[
                //         Text("Hello")
                //       ],
                //     );
                // }
                return Container(
                    child: Card(
                        child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlatButton(
                      padding: EdgeInsets.all(0.0),
                      child: RowCell(obj),
                      onPressed: () {
                        print("Cell taped : $i" + this.rows[i]["title"]);
                        // Navigator.push(
                        //     context,
                        //     new MaterialPageRoute(
                        //         builder: (BuildContext context) => new DetailPage(value:this.rows[i]["title"])));
                        var router = MaterialPageRoute(
                            builder: (BuildContext context) =>
                                DetailPage(value: this.rows[i]["title"]));
                        Navigator.of(context).push(router);
                      },
                    )
                  ],
                )));
              },
            ),
    );

    return Stack(
      children: <Widget>[
        Positioned(
            top: 0.0,
            right:1.0,
            left:1.0,
            child: Column(
              children: <Widget>[
                SortCard()
                ],
            )),
        Padding(
          padding: EdgeInsets.only(top: 140.0),
          child: _list,
        )
      ],
    );
  }
}
