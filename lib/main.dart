import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyListViews(),
    );
  }
}

class MyListViews extends StatelessWidget {
  Widget _myListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Article number 1'),
        ),
        ListTile(
          title: Text('Article number 2'),
        ),
        ListTile(
          title: Text('Article number 3'),
        ),
        ListTile(
          title: Text('Article number 4'),
        ),
        ListTile(
          title: Text('Article number 5'),
        ),
        ListTile(
          title: Text('Article number 6'),
        ),
        ListTile(
          title: Text('Article number 7'),
        ),
        ListTile(
          title: Text('Article number 8'),
        ),
        ListTile(
          title: Text('Article number 9'),
        ),
        ListTile(
          title: Text('Article number 10'),
        ),
        ListTile(
          title: Text('Article number 11'),
        ),
        ListTile(
          title: Text('Article number 12'),
        ),
      ],
    );
  }

  Widget _myListViewWithBasicSeparator(BuildContext context) {
    return ListView(
        primary: true,
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text('Article number 1'),
            ),
            ListTile(
              title: Text('Article number 2'),
            ),
            ListTile(
              title: Text('Article number 3'),
            ),
            ListTile(
              title: Text('Article number 4'),
            ),
            ListTile(
              title: Text('Article number 5'),
            ),
            ListTile(
              title: Text('Article number 6'),
            ),
            ListTile(
              title: Text('Article number 7'),
            ),
            ListTile(
              title: Text('Article number 8'),
            ),
            ListTile(
              title: Text('Article number 9'),
            )
          ],
        ).toList());
  }

  Widget _myListViewBuilder(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Article number $index'),
        );
      },
    );
  }

  Widget _myListViewBuilderHorizontal(BuildContext context) {
    return ConstrainedBox(
        constraints: new BoxConstraints(
          maxHeight: 50.0,
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              width: 50,
              color: Colors.deepOrangeAccent,
              child: Center(child: Text('$index')),
            );
          },
        ));
  }

  Widget _myListViewWithCustomIconAndCard(BuildContext context) {
    final titles = [
      'alarm',
      'pics',
      'PDF collection',
      'camera',
      'giftcard',
      'edit',
      'adb',
      'zoom in',
      'zoom out'
    ];

    final icons = [
      Icons.access_alarm,
      Icons.collections,
      Icons.picture_as_pdf,
      Icons.camera,
      Icons.card_giftcard,
      Icons.mode_edit,
      Icons.adb,
      Icons.zoom_in,
      Icons.zoom_out
    ];

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
              leading: Icon(icons[index], color: Colors.orange[800], size: 20),
              title: Text(titles[index]),
            ),
            elevation: 3,
            shape: StadiumBorder(
                side: BorderSide(
              color: Colors.deepOrange,
              width: 1.0,
            )));
      },
    );
  }

  Widget _myListViewWithCustomIconCardAndTouchEvent(BuildContext context) {
    final titles = [
      'alarm',
      'pics',
      'PDF collection',
      'camera',
      'giftcard',
      'edit',
      'adb',
      'zoom in',
      'zoom out'
    ];

    final icons = [
      Icons.access_alarm,
      Icons.collections,
      Icons.picture_as_pdf,
      Icons.camera,
      Icons.card_giftcard,
      Icons.mode_edit,
      Icons.adb,
      Icons.zoom_in,
      Icons.zoom_out
    ];

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
              leading: Icon(icons[index], color: Colors.orange[800], size: 20),
              title: Text(titles[index]),
              onTap: () {
                print(titles[index]);
              },
            ),
            elevation: 3,
            shape: StadiumBorder(
                side: BorderSide(
              color: Colors.deepOrange,
              width: 1.0,
            )));
      },
    );
  }

  Widget _myListViewSeparated(BuildContext context) {
    return ListView.separated(
      itemCount: 50,
      separatorBuilder: (context, int index) {
        return Container(
          child: ListTile(
              title: Text(
            'SeperatorItem $index',
            style: TextStyle(color: Colors.white),
          )),
          color: Colors.red[900],
          margin: EdgeInsets.symmetric(vertical: 10),
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: const Icon(Icons.accessibility,
                size: 40.0, color: Colors.white),
            title: Text('Title $index'),
            subtitle: Text('SubText'),
          ),
          color: Colors.amber,
        );
      },
    );
  }

  Widget _myListViewSeparatedBasic(BuildContext context) {
    return ListView.separated(
      itemCount: 50,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.red[900],
          thickness: 5,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: const Icon(Icons.accessibility,
                size: 30.0, color: Colors.white),
            title: Text('Title $index'),
            subtitle: Text('SubText'),
          ),
          color: Colors.amber,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 18'),
      ),
      body: _myListViewSeparated(context),
    );
  }
}
