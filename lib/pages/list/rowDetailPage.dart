import 'package:flutter/material.dart';
import '../../_color/colors.dart';


EdgeInsets globalMargin = const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0);
TextStyle textStyle = const TextStyle(
  fontSize: 100.0,
  color: Colors.black,
);



class DetailPage extends StatefulWidget {
  final String value;
  DetailPage({Key key, this.value}) : super(key: key);

  State<StatefulWidget> createState() {
    // TODO: implement createState
    //StateWidget을 반환한다.
    //return null;

    return new DetailPageState();
  }
}

class DetailPageState extends State<DetailPage> {
  void initState() {
    super.initState();

    print("Detail Page");
    print("$widget.value");
    print(widget.value);
  }
  

  @override
  Widget build(BuildContext context) {
    var _mainTitle = widget.value;
    var _jobTitle = "목공/철근";
    var _location = "서울시 서대문구 홍제동 (2.4Km)";
    var _workDate = "2018-06-10(수)";
    var _pay = "120,000 원";

    var _workDue = "당일";
    var _workTime = "6:00 ~ 17:00(11시간)";
    var _maxC = "12명";
    var _promisingCondition = "경력자, 관련 자격증소지자, 안전교육 이수자";
    var _dueDate = "상시모집";

    var _career = "무관";
    var _sex = "무관";
    var _ageRange = "30세 이상 60세 이하";

    var _memo = "안전화는 규정상 필수입니다.(미착용시 근무불가)";
    TextStyle titleStyle = TextStyle(
      fontSize: 20.0,
      color: Colors.grey[850],
    );

    final _appBar = new AppBar(
      title: new Text("상세정보"),
      backgroundColor: linkerNavColor,
      // actions: <Widget>[
      //   new IconButton(
      //       icon: new Icon(Icons.alarm),
      //       onPressed: () {
      //         setState(() {
      //           print("알람 페이지 ");
      //           Navigator.of(context).pushNamed("/AlarmPage");
      //         });
      //       }),
      // ],
    );

    final _titleCard = new Card(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text(_mainTitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[300],
                        fontSize: 25.0)),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(_jobTitle,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[300],
                          fontSize: 20.0)),
                ),
              ],
            ),
          ),
          ListTile(
              leading: Text("위치 - "),
              title: Text(_location),
              trailing: RaisedButton(
                color: Colors.yellow,
                child: Text("지도보기", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                onPressed: (){},
              )),
          ListTile(
            leading: Text("근무일자 - "),
            title: Text(_workDate),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: new ButtonBar(
              children: <Widget>[
                Text("일당 : "),
                Text(
                  _pay,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[300],
                      fontSize: 25.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final _workCard = Card(
        child: new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.0),
          child: Text("- 근무조건",
              style: TextStyle(fontSize: 20.0, color: Colors.cyan)),
        ),
        ListTile(leading: Text("근무기간 "), title: Text(_workDue)),
        ListTile(leading: Text("근무시간 "), title: Text(_workTime)),
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.0),
          child: Text("- 모집 내용",
              style: TextStyle(fontSize: 20.0, color: Colors.cyan)),
        ),
        ListTile(leading: Text("모집인원 "), title: Text(_maxC)),
        ListTile(leading: Text("우대조건 "), title: Text(_promisingCondition)),
        ListTile(leading: Text("모집기간 "), title: Text(_dueDate)),
      ],
    ));

    final _conditionCard = Card(
        child: new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.0),
          child: Text("- 자격조건",
              style: TextStyle(fontSize: 20.0, color: Colors.cyan)),
        ),
        ListTile(leading: Text("경력 "), title: Text(_career)),
        ListTile(leading: Text("성별 "), title: Text(_sex)),
        ListTile(leading: Text("연령 "), title: Text(_ageRange)),
      ],
    ));

    final _etcCard = Card(
        child: new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.0),
          child: Text("- 기타사항",
              style: TextStyle(fontSize: 20.0, color: Colors.cyan)),
        ),
        ListTile( title: Text(_memo)),
      ],
    ));

    final _locationCard = Card(
        child: new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.0),
          child: Text("- 위치",
              style: TextStyle(
                fontSize: 20.0, 
                color: Colors.cyan)
                ),
        ),
        ListTile( title: Text(_location)),
      ],
    ));

     final _submitBtn = RaisedButton(               
                color: Colors.blue,                 
                child: Container(
                height:60.0,
                width: MediaQuery.of(context).size.width-32.0,                
                // width: MediaQuery.fromWind
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text("신청하기", style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold))
                  ],
                )
              ),
              onPressed: (){},
              );




    return Scaffold(
        appBar: _appBar,
        body: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 65.0),
              child: Center(
                child: ListView(
                children: <Widget>[
                      _titleCard,
                      _workCard,                
                      _conditionCard,
                      _etcCard,                
                      _locationCard,
                      
                    ],
                  )
                ) ,

              ),
          Positioned(
              left:1.0,
              bottom:3.0,         
              right:1.0,     
                child: _submitBtn
          )
          ],
        )
        );
  }
}
