import 'package:flutter/cupertino.dart';

class Article {
  @required
  final int id;
  @required
  String title;
  @required
  String author;

  Article(this.id, this.title, this.author);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'author': author,
    };
  }

  Article.fromMapObject(Map<String, dynamic> authorMap)
      : id = authorMap['id'],
        title = authorMap['title'],
        author = authorMap['author'];

  @override
  String toString() {
    return 'Article{id: $id, title: $title, author: $author}';
  }
}
