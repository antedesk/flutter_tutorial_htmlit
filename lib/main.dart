import 'package:flutter/material.dart';

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
      home: HomePage(), //NewPageV2()
      //initialRoute: '/thirdpage',
      //routes: noSlashRouting(),
      /*
        // uncomment for the step related to unknown routes
        onUnknownRoute: (RouteSettings setting) {
          String unknownRoute = setting.name ;
          return new MaterialPageRoute(
              builder: (context) => NotFoundPage()
          );
        }*/
      /*
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return SlideRightRoute(widget: HomePageV2());
            break;
          case '/newpage':
            return SlideRightRoute(widget: NewPageV2());
            break;
          default:
            return SlideRightRoute(widget: NotFoundPage());
        }
      },
      */
    );
  }

  Map<String, WidgetBuilder> mainRouting(){
    return {
      // When navigating to the "/" route, build the HomePage widget.
      '/': (context) => HomePageV2(),
      // When navigating to the "/second" route, build the NewPage widget.
      '/newpage': (context) => NewPageV2(),
    };
  }

  /*
   * this method must be used in correlation with the
   * initialRoute: '/thirdpage',
   */
  Map<String, WidgetBuilder> threeRouting(){
    return {
      // When navigating to the "/" route, build the HomePage widget.
      '/': (context) => HomePageV2(),
      // When navigating to the "/second" route, build the NewPage widget.
      '/newpage': (context) => NewPageV2(),
      '/thirdpage': (context) => ThirdPageV2(),
    };
  }

  /*
   * this method must be used in correlation with the
   * home: HomePage(),
   */
  Map<String, WidgetBuilder> noSlashRouting(){
    return {
      // When navigating to the "/" route, build the HomePage widget.
      '/home': (context) => HomePageV2(),
      // When navigating to the "/second" route, build the NewPage widget.
      '/newpage': (context) => NewPageV2(),
    };
  }

}


/*
 * Simple Routing Example
 */

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to the NewPage'),
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => NewPage());
            Navigator.push(context, route);
          },
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NewPage"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

/*
 * Named Routing Example
 */

class HomePageV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to the NewPage'),
          onPressed: () {
            Navigator.pushNamed(context, '/newpage');
            //Navigator.pushNamed(context, '/newp'); // uncomment to test the unknown routing
          },
        ),
      ),
    );
  }
}

class NewPageV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NewPage"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class ThirdPageV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdPage"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text('Go to HomePage!'),
        ),
      ),
    );
  }
}

/*
 * UnknownRoute management.
 * To use in combo with
 *
  onUnknownRoute: (RouteSettings setting) {
    String unknownRoute = setting.name ;
    return new MaterialPageRoute(
        builder: (context) => NotFoundPage()
    );
  }
 */

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageNotFound"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back to HomePage!'),
        ),
      ),
    );
  }
}


/*
* Custom animation
*/

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;
  SlideRightRoute({this.widget})
      : super(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return widget;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return new SlideTransition(
          position: new Tween<Offset>(
            begin: const Offset(-1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      }
  );
}