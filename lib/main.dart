import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

// Constant variables for the definition of the images' path
const _PATH = "assets/images";
const _PIC01 = "$_PATH/sunset.jpg";
const _PIC02 = "$_PATH/dog1.jpg";
const _PIC03 = "$_PATH/dog2.jpg";
const _PIC04 = "$_PATH/fox.jpg";
const _PIC05 = "$_PATH/spring.jpg";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 12 - Assets and Images'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Text("BoxFit=cover"),
          Container(
            constraints: BoxConstraints.expand(height: 300),
            alignment: Alignment.center,
            child: Image.asset(
              _PIC02,
              fit: BoxFit.cover,
            ),
          ),
          Text("AssetImag, BoxFit=cover"),
          Container(
            constraints: BoxConstraints.expand(height: 300),
            alignment: Alignment.center,
            child: Image(
              image: AssetImage(_PIC05),
              fit: BoxFit.cover,
            ),
          ),

          Text("width = 200, height = 200"),
          Container(
            color: Colors.blueGrey,
            margin: EdgeInsets.only(bottom: 15),
            child: Image.asset(
              _PIC01,
              height: 200,
              width: 200,
            ),
          ),

          Text("Boxfit=fill, width = 150, height = 150"),
          Container(
            color: Colors.blueGrey,
            margin: EdgeInsets.only(bottom: 15),
            child: Image.asset(
              _PIC01,
              fit: BoxFit.fill,
              height: 150,
              width: 150,
            ),
          ),
          Text("Boxfit=fitWidth, width = 150, height = 150"),
          Container(
            color: Colors.blueGrey,
            margin: EdgeInsets.only(bottom: 15),
            child: Image.asset(
              _PIC01,
              fit: BoxFit.fitWidth,
              height: 150,
              width: 150,
            ),
          ),

          Text("Boxfit=fitHeight, width = 150, height = 150"),
          Container(
            color: Colors.blueGrey,
            margin: EdgeInsets.only(bottom: 15),
            child: Image.asset(
              _PIC01,
              fit: BoxFit.fitHeight,
              height: 150,
              width: 150,
            ),
          ),
          Text("Boxfit=cover, width = 150, height = 150"),
          Container(
            color: Colors.blueGrey,
            margin: EdgeInsets.only(bottom: 15),
            child: Image.asset(
              _PIC01,
              fit: BoxFit.cover,
              height: 150,
              width: 150,
            ),
          ),
          Text("Boxfit=cover, width = 150, height = 150"),
          Container(
            color: Colors.blueGrey,
            margin: EdgeInsets.only(bottom: 15),
            width: 150,
            height: 150,
            child: Image.asset(
              _PIC01,
              fit: BoxFit.scaleDown,
            ),
          ),
          Text("Boxfit=none, width = 150, height = 150"),
          Container(
            color: Colors.blueGrey,
            margin: EdgeInsets.only(bottom: 15),
            width: 150,
            height: 150,
            child: Image.asset(
              _PIC04,
              fit: BoxFit.none,
            ),
          ),
          Text("FilterQuality.none"),
          Container(
            color: Colors.blueGrey,
            margin: EdgeInsets.only(bottom: 15),
            child: Image.asset(
              _PIC05,
              filterQuality: FilterQuality.none,
            ),
          ),
          Text("FilterQuality.high"),
          Container(
            color: Colors.blueGrey,
            margin: EdgeInsets.only(bottom: 15),
            child: Image.asset(
              _PIC05,
              filterQuality: FilterQuality.high,
            ),
          ),

          Text("repeatX"),
          Container(
            constraints: BoxConstraints.expand(height: 50),
            margin: EdgeInsets.only(bottom: 15),
            child: Image.asset(
              _PIC03,
              repeat: ImageRepeat.repeatX,
              fit: BoxFit.contain,
            ),
          ),

          Text("color and colorBlendMode"),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Image.asset(
              _PIC04,
              color: Colors.purple,
              colorBlendMode: BlendMode.colorDodge,
            ),
          ),

          Text("Image loaded from web"),
          Container(
            color: Colors.black,
            margin: EdgeInsets.only(bottom: 15),
            child: Image.network(
                'https://www.html.it/app/themes/html-2018/dist/images/logo-open.png'),
          ),
          Text("Image loaded from web and saved in cache"),
          Container(
            color: Colors.black,
            margin: EdgeInsets.only(bottom: 15),
            child: CachedNetworkImage(
              imageUrl:
                  'https://www.html.it/app/themes/html-2018/dist/images/logo-open.png',
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
              fadeInDuration: Duration(seconds: 3),
            ),
          )
        ],
      )),
    );
  }
}
