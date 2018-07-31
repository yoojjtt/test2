import 'package:flutter/material.dart';
import './bottom_inherit.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //StateWidget을 반환한다.
    //return null;
    return new MyBottomNavBarState();
  }
}





class MyBottomNavBarState extends  State<BottomNavBar>{
    MyBottomNavBarState({this.index});
    

    
    final int index;
    int _bottomNavBarIndex = 1;

  void _selectedState(Nav nav) {
    setState(() {
      
      print("parent setState ${nav.routs}");
      _bottomNavBarIndex = nav.index;
      BottomNavState.of(context).onTap(nav.routs, nav.index);
      
    });
  }

    @override
      Widget build(BuildContext context) {
        // TODO: implement build
        final bottomNav = BottomNavState.of(context);
        return new Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.grey[800],
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.orangeAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: new TextStyle(
                    color: Colors
                        .redAccent))), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          currentIndex:_bottomNavBarIndex,
          onTap: (int index) {
            print("현재 페이지는 $index");
            _selectedState(navs[index]);
          },
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today),
              title: navs[0].title,
            ),
            
            new BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: navs[1].title,
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.settings),
                title: navs[2].title
            )
          ],
        ),
      );
      }
}

class Nav {
  final int index;
  final Text title;
  final String url;
  final Icon icon;
  final String routs;
  const Nav({this.index, this.title, this.url, this.routs, this.icon});
}

const List<Nav> navs = <Nav>[
  const Nav(
      index: 0,
      title: const Text("나의일정"),
      url: "",
      routs: "/SchedulePage",
      icon: const Icon(Icons.calendar_today)),
  const Nav(
      index: 1,
      title: const Text("일자리 검색"),
      url: "",
      routs: "/MainPage",
      icon: const Icon(Icons.search)),
  const Nav(
      index: 2,
      title: const Text("설정"),
      url: "",
      routs: "/SettingsPage",
      icon: const Icon(Icons.settings))
];