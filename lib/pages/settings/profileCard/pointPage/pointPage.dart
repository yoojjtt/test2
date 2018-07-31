import 'package:flutter/material.dart';
import '../../../../_color/colors.dart';
import './paymentMethod.dart';
import './pointCard.dart';

class PointPage extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return PointPageState();
    }
}

class PointPageState extends State<PointPage>{
  
  final _appBar = new AppBar(
      title: Center(
        child: Text("포인트 충전")
        ),
      backgroundColor: linkerNavColor,
      
    );
  
  @override
    Widget build(BuildContext context) {
      // TODO: implement build



      final _submitBtn = RaisedButton(               
                color: Colors.blue,                 
                child: Container(
                height:60.0,
                width: MediaQuery.of(context).size.width-32.0,                
                // width: MediaQuery.fromWind
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text("결제하기", style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold))
                  ],
                )
              ),
              onPressed: (){},
              );



      return Scaffold(
        appBar: _appBar,
        body:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, // contents 내용에 맞게 넓히기
              // mainAxisAlignment: MainAxisAlignment.center, //contents 세로 중간정렬
              // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                PointCard(),
                PaymentMethod(),
                Expanded(     
                  flex: 1,
                  child: _submitBtn,
                )
                
              ],
            ),
              
        
        
      );
    }
}