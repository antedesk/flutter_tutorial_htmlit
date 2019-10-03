import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyDrawer(),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 19'),
      ),
      body: Container(
        child: Center(
          child: Text("Default Scaffold Body"),
        ),
      ),
      drawer: MyAlwaysAvailableDrawer(),
    );
  }

  Widget _myBasicDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              print('Item 1');
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              print('Item 2');
            },
          ),
        ],
      ),
    );
  }

  Widget _myDrawerWithHeaderAndDivider(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Header'),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Item 1'),
            onTap: () {
              print('Item 1');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.view_agenda),
            title: Text('Item 2'),
            onTap: () {
              print('Item 2');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.local_bar),
            title: Text('Item 2'),
            onTap: () {
              print('Item 2');
            },
          ),
          ListTile(
            leading: Icon(Icons.local_cafe),
            title: Text('Item 3'),
            onTap: () {
              print('Item 3');
            },
          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.close),
            title: Text('Close'),
            onTap: () {
              print('Closed!');
            },
          ),
        ],
      ),
    );
  }

  Widget _myDrawerWithAccountHeader(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Antedesk"),
            accountEmail: Text("myawesomeemail@example.it"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey[200],
              /*Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,*/
              child: Icon(Icons.person, size: 60),
            ),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Item 1'),
            onTap: () {
              print('Item 1');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.view_agenda),
            title: Text('Item 2'),
            onTap: () {
              print('Item 2');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.local_cafe),
            title: Text('Item 3'),
            onTap: () {
              print('Item 3');
            },
          ),
        ],
      ),
    );
  }

  Widget _myDrawerWithAccountHeaderAndSecondIcon(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Antedesk"),
            accountEmail: Text("myawesomeemail@example.it"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.person, size: 60),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 20.0),
                  )),
              Icon(Icons.shop, size: 30, color: Colors.white)
            ],
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Item 1'),
            onTap: () {
              print('Item 1');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.local_bar),
            title: Text('Item 2'),
            onTap: () {
              print('Item 2');
            },
          ),
          ListTile(
            leading: Icon(Icons.local_cafe),
            title: Text('Item 3'),
            onTap: () {
              print('Item 3');
            },
          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.close),
            title: Text('Close'),
            onTap: () {
              print('Closed!');
            },
          ),
        ],
      ),
    );
  }

  Widget _myDrawerwithHeaderAndNavigation(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Antedesk"),
            accountEmail: Text("myawesomeemail@example.it"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.person, size: 60),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 20.0),
                  )),
              Icon(Icons.shop, size: 30, color: Colors.white)
            ],
          ),
          ListTile(
            leading: Icon(Icons.local_bar),
            title: Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new NewPage('Item 1')));
            },
          ),
          ListTile(
            leading: Icon(Icons.local_cafe),
            title: Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new NewPage('Item 2')));
            },
          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.close),
            title: Text('Close'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}


class MyAlwaysAvailableDrawer extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new Drawer(
        child: new ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Antedesk"),
              accountEmail: Text("myawesomeemail@example.it"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.person, size: 60),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 20.0),
                    )),
                Icon(Icons.shop, size: 30, color: Colors.white)
              ],
            ),
            ListTile(
              leading: Icon(Icons.local_bar),
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new NewPageV2('Item 1')));
              },
            ),
            ListTile(
              leading: Icon(Icons.local_cafe),
              title: Text('Item 2'),
              onTap: () {
                //Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new NewPageV2('Item 2')));
              },
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.close),
              title: Text('Close'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        )
    );
  }
}


class NewPage extends StatelessWidget {
  final String title;

  NewPage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: Center(child: Text("I belongs to $title"))
    );
  }
}

class NewPageV2 extends StatelessWidget {
  final String title;

  NewPageV2(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: Center(child: Text("I belongs to $title")),
      drawer: MyAlwaysAvailableDrawer(),
    );
  }
}