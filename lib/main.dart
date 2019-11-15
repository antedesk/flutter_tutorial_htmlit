import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(), // first example
      /* //uncomment to use the real example
      home: ArticleListPage(
        articles: List.generate(
          20,
              (i) =>
              Article(
                'Article $i',
                'This is a simple text for Article $i',
              ),
        ),
      ),*/
      /*
      routes: <String, WidgetBuilder>{
        '/': (context) => HomePageV2(),
        '/article_details': (context) => ArticleDetailPageV2(),
      },*/

      home: HomePageV2(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => HomePageV2());
            break;
          case '/article_details':
            Article article = settings.arguments;
            return MaterialPageRoute(
              builder: (context) => ArticleDetailPage(article: article),
            );
            break;
          default:
            return MaterialPageRoute(builder: (context) => HomePageV2());
        }
      },
    );
  }
}

/*
 * This class should be put in a proper dart file for managing the entities of
 * our app. For this simple tutorial is ok to place it in the main.dart file
 */
class Article {
  final String title;
  final String description;

  Article(this.title, this.description);
}

/*
 * Simple Routing
 */

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Article article =
                new Article('Article', 'This is a simple text for Article');
            Route route = MaterialPageRoute(
              builder: (context) => ArticleDetailPage(article: article),
            );
            Navigator.push(context, route);
          },
          child: Text('Open ArticleDetailPage'),
        ),
      ),
    );
  }
}


class ArticleDetailPage extends StatelessWidget {
  final Article article;

  ArticleDetailPage({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(article.description),
      ),
    );
  }
}


/*
* Real example
*/

class ArticleListPage extends StatelessWidget {
  final List<Article> articles;

  ArticleListPage({Key key, @required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(articles[index].title),
            // When a user taps the ListTile, navigate to the ArticleDetailPage.
            // Notice that you're not only creating a ArticleDetailPage, you're
            // also passing the current article through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ArticleDetailPage(article: articles[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

/*
 * Named Routing
 */

class HomePageV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Article article = new Article('Article', 'This is a simple text for Article');
            Navigator.pushNamed(context, '/article_details', arguments: article);
          },
          child: Text('Open ArticleDetailPage'),
        ),
      ),
    );
  }
}

class ArticleDetailPageV2 extends StatefulWidget {
  @override
  _ArticleDetailPageV2State createState() => _ArticleDetailPageV2State();
}

class _ArticleDetailPageV2State extends State<ArticleDetailPageV2> {
  Article article;

  @override
  Widget build(BuildContext context) {
    RouteSettings settings = ModalRoute.of(context).settings;
    article = settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(article.description),
      ),
    );
  }
}

