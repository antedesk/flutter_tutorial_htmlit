import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lesson 24',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('Lesson 24')),
//        body: Center(child: MyWidgetV1(traveler: "Antonio", country: "Finland")),
          body: Center(child: MyWidget(traveler: "Antonio")),
        )
    );
  }
}

class MyWidgetV1 extends StatelessWidget {

  final String traveler;
  final String country;

  MyWidgetV1({Key key, this.traveler, this.country}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Text('$traveler went to "$country"');
  }

}


class MyWidget extends StatefulWidget {

  final String traveler;

  MyWidget({Key key, this.traveler}): super(key:key);

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  String country='';

  @override
  Widget build(BuildContext context) {
    return
      Container(
          child:Column(
            children: <Widget>[
              TextField(
                onSubmitted: (String countyName){
                  setState(() {
                    country = countyName;
                  });
                },
              ),
              Divider(),
              Text('${widget.traveler} visited $country'),
            ],
          ),
        width: 200,
        height: 200,
      );
  }

}