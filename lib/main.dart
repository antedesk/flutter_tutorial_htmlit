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

          Text("Image loaded from web"),
          Container(
            color: Colors.black,
            margin: EdgeInsets.only(bottom: 15),
            child: Image.network(
                'https://www.html.it/app/themes/html-2018/dist/images/logo-open.png'),
          ),
          Text("GIF loaded from web"),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Image.network(
                'https://media.giphy.com/media/9LQHvkbIzTSLe/giphy.gif'),
          ),

          Text("Image loaded from web and saved in cache"),
          Container(
            color: Colors.black,
            margin: EdgeInsets.only(bottom: 15),
            child: CachedNetworkImage(
              imageUrl:
              'https://www.html.it/app/themes/html-2018/dist/images/logo-open.png'
            ),
          ),
          Text("Image loaded from web and saved in cache with a placeholder and errorWidget"),
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
            ),
          ),
          Text("Image loaded with fading, placeholder, and errorWidget"),
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
          ),

          Text("GIF loaded with fading from web and saved in cache"),
          Container(
            color: Colors.black,
            margin: EdgeInsets.only(bottom: 15),
            child: CachedNetworkImage(
              imageUrl:
              'https://media.giphy.com/media/9LQHvkbIzTSLe/giphy.gif',
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
