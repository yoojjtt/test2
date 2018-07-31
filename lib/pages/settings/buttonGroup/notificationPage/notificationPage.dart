import 'package:flutter/material.dart';
import '../../../../_model/notification.dart';
import '../../../../_color/colors.dart';

class NotificationPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return NotificationPageState();
    }
}

class NotificationPageState extends State<NotificationPage>{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build


  Widget _buildBody(BuildContext context, item){
        return Container(
            child: Padding(
              
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(item.contents)
                ],
              ),

            ),
        );
      }
    final _appBar = new AppBar(
      title: Center(child: Text("공지사항")),
      backgroundColor: linkerNavColor,
    );


    final _listTile = ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          
          notes[index].expanded = !isExpanded;
        });
      },
      children: 
      notes.map((Note item) {
      return ExpansionPanel(
        headerBuilder: (BuildContext context, bool isExpanded) {
          return Container(
            padding: EdgeInsets.only(left: 18.0),
            child: Row(children: [
              Text(
                item.title,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Bold',
                    fontSize: 20.0,
                    color: Theme.of(context).backgroundColor),
              ),
            ]),
          );
          ;
        },
        isExpanded: item.expanded,
        body: _buildBody(context,item),
      );
    }).toList(),
      
    );

  
    return Scaffold(
        appBar: _appBar,
        body: Container(
          // color: Colors.red,
          margin: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              
              _listTile],
          ),
        ));
  }
}
