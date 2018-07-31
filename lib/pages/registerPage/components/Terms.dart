import 'package:flutter/material.dart';
import './eachTerm.dart';

class Term extends StatefulWidget {
  bool allChecked = false;
  bool serviceChecked = false;
  bool locationChecked = false;
  bool privateChecked = false;
  Function onChange;
  Term(

    {
      this.allChecked,
      this.serviceChecked,
      this.locationChecked,
      this.privateChecked,
      this.onChange
    }
  );
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TermState();
  }
}

class TermState extends State<Term> {
  // bool allChecked = false;
  // bool serviceChecked = false;
  // bool locationChecked = false;
  // bool privateChecked = false; 

  Widget _buildAgreement(
      BuildContext context, String name, bool val, String type) {
    return Container(
        decoration: new BoxDecoration(
          color: Colors.transparent,
          border: new Border(
            bottom: new BorderSide(width: 1.0, color: Colors.grey),
          ),
        ),
        child: Padding(
            padding: EdgeInsets.all(1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Checkbox(
                  onChanged: (bool val) {
                    widget.onChange(val, type);                   
                  },
                  value: val,
                  activeColor: Colors.greenAccent,
                ),
                Text(name),
                type != "all"
                    ? Padding(
                        padding: EdgeInsets.all(1.0),
                        child: OutlineButton(
                          child: Text("약관 보기"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsPage(name)),
                            );
                          },
                        ),
                      )
                    : Container()
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final _agreement = Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Container(
            // height: 200.0,
            decoration: new BoxDecoration(
              color: Colors.transparent,
              border: new Border(
                bottom: new BorderSide(width: 1.0, color: Colors.grey),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildAgreement(context, "서비스 전체동의", widget.allChecked, "all"),
                _buildAgreement(context, "서비스 이용약관", widget.serviceChecked, "service"),
                _buildAgreement(context, "위치기반서비스 이용약관", widget.locationChecked, "location"),
                _buildAgreement(context, "개인정보취급방침", widget.privateChecked, "private")
              ],
            ))
      ],
    );
    return _agreement;
  }
}
