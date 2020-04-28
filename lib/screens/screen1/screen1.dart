import 'package:flutter/material.dart';
import 'package:flutter_tutorial_htmlit/models/article.dart';
import 'package:flutter_tutorial_htmlit/repositories/article_repository.dart';

class Screen1 extends StatefulWidget {
  Screen1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final _formKey = GlobalKey<FormState>();
  Future<List<Article>> future;
  String title = 'No title';
  String author = 'No Author';
  int id;

  @override
  initState() {
    super.initState();
    future = ArticleRepository.getAllArticles();
  }

  _updateArticle(Article article) async {
    article.title = 'New Title';
    article.author = 'New Author';
    await ArticleRepository.updateArticle(article);
    setState(() {
      future = ArticleRepository.getAllArticles();
    });
  }

  _deleteArticle(Article article) async {
    await ArticleRepository.deleteArticle(article);
    setState(() {
      id = null;
      future = ArticleRepository.getAllArticles();
    });
  }

  Card buildItem(Article article) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'title: ${article.title}',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'author: ${article.author}',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton.icon(
                  label: Text(''),
                  onPressed: () => _updateArticle(article),
                  icon: Icon(
                    Icons.update,
                    color: Colors.green,
                  ),
                ),
                FlatButton.icon(
                    label: Text(''),
                    onPressed: () => _deleteArticle(article),
                    icon: Icon(Icons.delete, color: Colors.red)),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _createArticle() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      int count = await ArticleRepository.articlesCount();
      final article = Article(count, title, author);
      await ArticleRepository.addArticle(article);
      setState(() {
        id = article.id;
        future = ArticleRepository.getAllArticles();
      });
      print(article.id);
    }
  }

  TextFormField buildTitleTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'title',
        fillColor: Colors.grey[300],
        filled: true,
      ),
      onSaved: (value) => title = value,
    );
  }

  TextFormField buildAuthorTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'author',
        fillColor: Colors.grey[300],
        filled: true,
      ),
      onSaved: (value) => author = value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 35'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Form(
              key: _formKey,
              child: Column(children: <Widget>[
                buildTitleTextFormField(),
                Divider(),
                buildAuthorTextFormField(),
              ])),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: _createArticle,
                child: Text('Create'),
              ),
            ],
          ),
          Divider(),
          FutureBuilder<List<Article>>(
            future: future,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                    children: snapshot.data
                        .map((article) => buildItem(article))
                        .toList());
              } else {
                return SizedBox();
              }
            },
          )
        ],
      ),
    );
  }
}
