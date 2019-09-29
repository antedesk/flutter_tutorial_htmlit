import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyTabBar(),
    );
  }
}

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 19'),
      ),
      body: _myTabBarWithCustomLabelAndOnTapEvent(),
    );
  }

  Widget _myTabBarBasic() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.radio_button_unchecked), text: "tab1"),
              Tab(icon: Icon(Icons.alarm), text: "tab 2"),
              Tab(icon: Icon(Icons.alarm_add), text: "tab 3"),
            ],
          ),
          title: Text('MyTabBar Title'),
          backgroundColor: Colors.amber,
        ),
        body: TabBarView(
          children: [
            Icon(Icons.alarm),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike)
          ],
        ),
      ),
    );
  }

  Widget _myTabBarWithScreens() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.radio_button_unchecked)),
              Tab(icon: Icon(Icons.alarm)),
              Tab(icon: Icon(Icons.alarm_add)),
            ],
          ),
          title: Text('MyTabBar Title'),
          backgroundColor: Colors.amber,
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen()
          ],
        ),
      ),
    );
  }

  Widget _myTabBarWithIndicatorColor() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.radio_button_unchecked), text: "tab1"),
              Tab(icon: Icon(Icons.alarm), text: "tab 2"),
              Tab(icon: Icon(Icons.alarm_add), text: "tab 3"),
            ],
            indicatorColor: Colors.red[800],
            indicatorWeight: 10,
            indicatorSize: TabBarIndicatorSize.label,
          ),
          title: Text('MyTabBar Title'),
          backgroundColor: Colors.amber,
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen()
          ],
        ),
      ),
    );
  }

  Widget _myTabBarWithCustomIndicator() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.radio_button_unchecked), text: "tab1"),
              Tab(icon: Icon(Icons.alarm), text: "tab 2"),
              Tab(icon: Icon(Icons.alarm_add), text: "tab 3"),
            ],
            indicatorColor: Colors.red[800],
            indicatorWeight: 10,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: ShapeDecoration(
              shape: BeveledRectangleBorder(
                  side: BorderSide(color: Colors.deepOrange[800]),
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          title: Text('MyTabBar Title'),
          backgroundColor: Colors.amber,
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen()
          ],
        ),
      ),
    );
  }

  Widget _myTabBarWithCustomLabelAndOnTapEvent() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.radio_button_unchecked), text: "tab1"),
              Tab(icon: Icon(Icons.alarm), text: "tab 2"),
              Tab(icon: Icon(Icons.alarm_add), text: "tab 3"),
            ],
            indicatorColor: Colors.red[800],
            labelColor: Colors.black54,
            labelPadding: EdgeInsets.symmetric(vertical: 10),
            labelStyle: TextStyle(fontSize: 20),
            unselectedLabelColor: Colors.blueGrey[800],
            unselectedLabelStyle: TextStyle(fontSize: 14),
            onTap: (index) {
              var content = "";
              switch (index) {
                case 0:
                  content = "tab 1";
                  break;
                case 1:
                  content = "tab 2";
                  break;
                case 2:
                  content = "tab 3";
                  break;
                default:
                  content = "Nothing selectedcapitankevin88"
                      "";
                  break;
              }
              print("Clicked on $content");
            },
          ),
          title: Text('MyTabBar Title'),
          backgroundColor: Colors.amber,
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen()
          ],
        ),
      ),
    );
  }

  Widget _myTabBarWithScrollableTabs() {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.radio_button_unchecked), text: "tab1"),
              Tab(icon: Icon(Icons.alarm), text: "tab 2"),
              Tab(icon: Icon(Icons.alarm_add), text: "tab 3"),
              Tab(icon: Icon(Icons.alarm_add), text: "tab 4"),
              Tab(icon: Icon(Icons.alarm_off), text: "tab 5"),
              Tab(icon: Icon(Icons.alarm_on), text: "tab 6"),
              Tab(icon: Icon(Icons.access_alarm), text: "tab 7"),
              Tab(icon: Icon(Icons.camera), text: "tab 8"),
            ],
            isScrollable: true,
          ),
          title: Text('MyTabBar Title'),
          backgroundColor: Colors.amber,
        ),
        body: TabBarView(
          children: [
            Icon(Icons.alarm),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            FirstScreen(),
            SecondScreen(),
            ThirdScreen(),
            Icon(Icons.access_alarm),
            Icon(Icons.camera),
          ],
        ),
      ),
    );
  }
}


/*
 * The following StatelessWidget are here located just for this example.
 * Please for real application consider to move the code of each TabBarView in
 * a given .dart file for improving your code quality.
 * Hence.... NO SPAGHETTI CODE PLZ :)
 */

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Tab 1 Layout'),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Tab 2 Layout'),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Tab 3 Layout'),
      ),
    );
  }
}