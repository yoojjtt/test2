import 'package:flutter/material.dart';
import '../../../../_style/style.dart';
import '../../../../_model/checkout.dart';

class PaymentMethod extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PaymentMethodState();
  }
}

class PaymentMethodState extends State<PaymentMethod> {
  Color _activeColor = Colors.black; // active
  Color _activeBackColor = Colors.grey[100]; // active
  int _selectedBtn = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    void onPressed(int selectedIndex) {
      setState(() {
        _selectedBtn = selectedIndex;
      });
    }

    Widget checkBtn(
      BuildContext context,
      int methodInt,
    ) {
      return Padding(
        padding: EdgeInsets.all(10.0),
        child: RaisedButton(
          child: Text(checkouts[methodInt].title,
              style: TextStyle(
                  color:
                      _selectedBtn == methodInt ? _activeColor : Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold)),
          onPressed: () {
            onPressed(methodInt);
          },
          splashColor: checkouts[methodInt].splachColor,
          color: _selectedBtn == methodInt
              ? _activeBackColor
              : checkouts[methodInt].color,

          // splashColor: Colors.yellowAccent,
        ),
      );
    }

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text("금액", style: subTitleStyle),
                TextFormField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    labelText: "충전할 금액 : ",
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("결제방식", style: subTitleStyle),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  checkBtn(context, 0),
                  checkBtn(context, 1),
                  checkBtn(context, 2),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  checkBtn(context, 3),
                  checkBtn(context, 4),
                  checkBtn(context, 5),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
