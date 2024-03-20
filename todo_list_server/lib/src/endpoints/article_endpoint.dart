import 'package:serverpod/serverpod.dart';
import 'package:todo_list_server/src/generated/article.dart';
import 'package:todo_list_server/src/generated/protocol.dart';

class ArticleEndpoint extends Endpoint {
  Future<List<Article>> getArticle(Session session, {String? keyword}) async {
    // ignore: deprecated_member_use_from_same_package
    return await Article.db.find(session,
        where: (t) =>
            keyword != null ? t.title.like("%$keyword%") : Constant.bool(true));
  }

  Future<bool> addArticle(Session session, Article article) async {
    await Article.db.insert(session, [article]);
    return true;
  }

  Future<bool> deleteArticle(Session session,
      {required Article article}) async {
    var result = await Article.db.delete(session, [article]);
    return result.first == 1;
  }

  Future<Article> updateArticle(Session session,
      {required Article article}) async {
    var result = await Article.db.update(session, [article]);
    return result[0];
  }
}
