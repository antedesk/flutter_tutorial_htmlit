import 'package:flutter_tutorial_htmlit/models/article.dart';
import 'package:flutter_tutorial_htmlit/repositories/dbhelper.dart';

class ArticleRepository {
  static Future<List<Article>> getAllArticles() async {
    final sql = '''SELECT * FROM ${DBHelper.articlesTable}''';
    final results = await db.rawQuery(sql);
    List<Article> articles = List();

    for (final el in results) {
      final article = Article.fromMapObject(el);
      articles.add(article);
    }
    return articles;
  }

  static Future<Article> getArticle(int id) async {
    final sql = '''SELECT * FROM ${DBHelper.articlesTable}
    WHERE ${DBHelper.id} = ?''';

    List<dynamic> params = [id];
    final data = await db.rawQuery(sql, params);

    final article = Article.fromMapObject(data.first);
    return article;
  }

  static Future<void> addArticle(Article article) async {
    final sql = '''INSERT INTO ${DBHelper.articlesTable}(
                    ${DBHelper.id},
                    ${DBHelper.title},
                    ${DBHelper.author})
                  VALUES (?,?,?)
                ''';
    List<dynamic> params = [article.id, article.title, article.author];
    final result = await db.rawInsert(sql, params);
    DBHelper.dbLogging('Add article', sql, null, result, params);
  }

  static Future<void> deleteArticle(Article article) async {
    final sql = '''DELETE FROM ${DBHelper.articlesTable}
                   WHERE ${DBHelper.id} = ?
                ''';

    List<dynamic> params = [article.id];
    final result = await db.rawDelete(sql, params);

    DBHelper.dbLogging('Delete article', sql, null, result, params);
  }

  static Future<void> updateArticle(Article article) async {
    final sql = '''UPDATE ${DBHelper.articlesTable}
                   SET ${DBHelper.title} = ?, ${DBHelper.author} = ?
                   WHERE ${DBHelper.id} = ?
                ''';

    List<dynamic> params = [article.title, article.id];
    final result = await db.rawUpdate(sql, params);

    DBHelper.dbLogging('Update article', sql, null, result, params);
  }

  static Future<int> articlesCount() async {
    final data =
        await db.rawQuery('''SELECT COUNT(*) FROM ${DBHelper.articlesTable}''');

    return data[0].values.elementAt(0) + 1;
  }
}
