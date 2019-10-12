import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _myCustomThemeData(),
      home: MyHomePage(title: 'Lesson 23'),
    );
  }

  ThemeData _myCustomThemeData() {
    return ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Colors.deepOrangeAccent,
        accentColor: Colors.purple,
        textTheme: TextTheme(
          headline: TextStyle(fontWeight: FontWeight.w500, color: Colors.blue),
          title: TextStyle(fontSize: 50),
          caption: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 14.0, color: Colors.green),
          body1: TextStyle(fontSize: 20, color: Colors.purple),
        ));
  }

  ThemeData _myCustomThemeDataDark() {
    return ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.amber,
        brightness: Brightness.dark,
        primaryColor: Colors.deepOrangeAccent,
        accentColor: Colors.purple,
        textTheme: TextTheme(
          headline: TextStyle(fontWeight: FontWeight.w500, color: Colors.blue),
          title: TextStyle(fontSize: 50),
          caption: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 14.0, color: Colors.green),
          body1: TextStyle(fontSize: 20, color: Colors.purple),
        ));
  }

  ThemeData _themeOverridingdefault() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
        buttonTheme: base.buttonTheme.copyWith(
          buttonColor: Colors.blueGrey,
          shape: StadiumBorder(),
          textTheme: ButtonTextTheme.primary,
          splashColor: Colors.red,
        )
      );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
//                color: Theme.of(context).primaryColor,
                child: Text('my custom theme',
                    style: Theme.of(context).textTheme.headline)),
            Divider(),
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.body1,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.title,
            ),
            Divider(),
            RaisedButton(
              child: Text("my Button theme"),
              onPressed: () {},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
