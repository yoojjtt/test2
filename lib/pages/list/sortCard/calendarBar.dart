import 'package:flutter/material.dart';
import '../../../_model/calendar.dart';
import './sortCard_provider.dart';
import './calendar/calendar.dart';
class CalendarBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CalendarBarState();
  }
}

class CalendarBarState extends State<CalendarBar> {

  @override
    void initState() {
      // TODO: implement initState
      // super.initState();
    }
  @override
  Widget build(BuildContext context) {
  
  final sortCardState = SortCardProvider.of(context);


  
    // TODO: implement build
  Widget buildContainer(BuildContext context, int ilsu, String myDate ){

      //ilsu 는 0,1,2,3,4,5,6 순서데로 오고
      //myDate String 2018-07-17 으로 오고
      //sortCardState.lastDayInt
      //
      var yoil;
    
      // switch(ilsu & 6){
      //   case 0:  yoil = yoil_kr[0]; break;
      //   case 1:  yoil = yoil_kr[1]; break;
      //   case 2:  yoil = yoil_kr[2]; break;
      //   case 3:  yoil = yoil_kr[3]; break;
      //   case 4:  yoil = yoil_kr[4]; break;
      //   case 5:  yoil = yoil_kr[5]; break;
      //   case 6:  yoil = yoil_kr[6]; break;        
      // }
      
      var il = ilsu + 1;
      

      return Container(
              width: 40.0,
              // color: Colors.orange,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top:5.0),),
                  Text(il.toString()), 
                  Text(yoil_kr[0])],
              ),
            );
  }


  Widget buildArrowBtn(BuildContext context, String btnText, String direction){

    Icon _directionIcon;
    int monthCh;
    if(direction == "right"){
      _directionIcon = Icon(Icons.arrow_forward_ios, color: Colors.black, size: 30.0);
      monthCh = 1;
    }
    if(direction == "left"){
      _directionIcon = Icon(Icons.arrow_back_ios, color: Colors.black, size: 30.0);
      monthCh = -1;
    }

    return IconButton(
            icon: _directionIcon,
            onPressed: () {
              setState(() {

                print(btnText);
                print(sortCardState.myDate);
                sortCardState.onPressed('month', monthCh);
                // sortCardState.month =  
                
              });

            });
  }

  // switchDate(int date){
    
  // }
  // switchMonth(int month){

  // }


  var _calendar = Container(
      width: MediaQuery.of(context).size.width -106.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7, // 마지막날 계산해서 보내야함 
            itemBuilder: (context, i) {
                return buildContainer(context, i, sortCardState.myDate);
            }
      ));

    
  

    return Container(
        //  margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 63.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildArrowBtn(context,  "왼쪽 버튼", "left"),            
            // _calendar,
            Calender(margin: EdgeInsets.all(0.0),),
            buildArrowBtn(context,  "오른쪽 버튼", "right"),                    
          ],
        ));
  }
}
