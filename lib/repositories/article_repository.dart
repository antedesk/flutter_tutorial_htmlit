import 'package:flutter_tutorial_htmlit/models/article.dart';
import 'package:flutter_tutorial_htmlit/repositories/dbhelper.dart';
import 'package:sqflite/sqflite.dart';

class ArticleRepository {
  static Future<List<Article>> getAllArticles() async {
    final results = await db.query(DBHelper.articlesTable);
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

  static Future<void> addArticleRawQuery(Article article) async {
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

  static Future<void> addArticle(Article article) async {
    final result = await db.insert(DBHelper.articlesTable, article.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    DBHelper.dbLogging(
        'Add article', 'insert', null, result, [article.toMap()]);
  }

  static Future<void> deleteArticle(Article article) async {
    final result = await db.delete(DBHelper.articlesTable,
        where: 'id = ?', whereArgs: [article.id]);

    DBHelper.dbLogging('Delete article', 'delete', null, result, [article.id]);
  }

  static Future<void> updateArticle(Article article) async {
    final result = await db.update(DBHelper.articlesTable, article.toMap(),
        where: 'id = ?',
        whereArgs: [article.id],
        conflictAlgorithm: ConflictAlgorithm.replace);

    DBHelper.dbLogging(
        'Update article', 'update', null, result, [article.toMap()]);
  }

}
