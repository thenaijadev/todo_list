/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Article extends _i1.TableRow {
  Article._({
    int? id,
    required this.title,
    required this.content,
    required this.publishedOn,
    required this.isPrime,
  }) : super(id);

  factory Article({
    int? id,
    required String title,
    required String content,
    required DateTime publishedOn,
    required bool isPrime,
  }) = _ArticleImpl;

  factory Article.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Article(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      content: serializationManager
          .deserialize<String>(jsonSerialization['content']),
      publishedOn: serializationManager
          .deserialize<DateTime>(jsonSerialization['publishedOn']),
      isPrime:
          serializationManager.deserialize<bool>(jsonSerialization['isPrime']),
    );
  }

  static final t = ArticleTable();

  static const db = ArticleRepository._();

  String title;

  String content;

  DateTime publishedOn;

  bool isPrime;

  @override
  _i1.Table get table => t;

  Article copyWith({
    int? id,
    String? title,
    String? content,
    DateTime? publishedOn,
    bool? isPrime,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'content': content,
      'publishedOn': publishedOn.toJson(),
      'isPrime': isPrime,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'publishedOn': publishedOn,
      'isPrime': isPrime,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'content': content,
      'publishedOn': publishedOn.toJson(),
      'isPrime': isPrime,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      case 'content':
        content = value;
        return;
      case 'publishedOn':
        publishedOn = value;
        return;
      case 'isPrime':
        isPrime = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Article>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ArticleTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Article>(
      where: where != null ? where(Article.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Article?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ArticleTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Article>(
      where: where != null ? where(Article.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Article?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Article>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ArticleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Article>(
      where: where(Article.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Article row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Article row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Article row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ArticleTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Article>(
      where: where != null ? where(Article.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ArticleInclude include() {
    return ArticleInclude._();
  }

  static ArticleIncludeList includeList({
    _i1.WhereExpressionBuilder<ArticleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ArticleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ArticleTable>? orderByList,
    ArticleInclude? include,
  }) {
    return ArticleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Article.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Article.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ArticleImpl extends Article {
  _ArticleImpl({
    int? id,
    required String title,
    required String content,
    required DateTime publishedOn,
    required bool isPrime,
  }) : super._(
          id: id,
          title: title,
          content: content,
          publishedOn: publishedOn,
          isPrime: isPrime,
        );

  @override
  Article copyWith({
    Object? id = _Undefined,
    String? title,
    String? content,
    DateTime? publishedOn,
    bool? isPrime,
  }) {
    return Article(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      publishedOn: publishedOn ?? this.publishedOn,
      isPrime: isPrime ?? this.isPrime,
    );
  }
}

class ArticleTable extends _i1.Table {
  ArticleTable({super.tableRelation}) : super(tableName: 'article') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    content = _i1.ColumnString(
      'content',
      this,
    );
    publishedOn = _i1.ColumnDateTime(
      'publishedOn',
      this,
    );
    isPrime = _i1.ColumnBool(
      'isPrime',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString content;

  late final _i1.ColumnDateTime publishedOn;

  late final _i1.ColumnBool isPrime;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        content,
        publishedOn,
        isPrime,
      ];
}

@Deprecated('Use ArticleTable.t instead.')
ArticleTable tArticle = ArticleTable();

class ArticleInclude extends _i1.IncludeObject {
  ArticleInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Article.t;
}

class ArticleIncludeList extends _i1.IncludeList {
  ArticleIncludeList._({
    _i1.WhereExpressionBuilder<ArticleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Article.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Article.t;
}

class ArticleRepository {
  const ArticleRepository._();

  Future<List<Article>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ArticleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ArticleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ArticleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Article>(
      where: where?.call(Article.t),
      orderBy: orderBy?.call(Article.t),
      orderByList: orderByList?.call(Article.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Article?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ArticleTable>? where,
    int? offset,
    _i1.OrderByBuilder<ArticleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ArticleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Article>(
      where: where?.call(Article.t),
      orderBy: orderBy?.call(Article.t),
      orderByList: orderByList?.call(Article.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Article?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Article>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Article>> insert(
    _i1.Session session,
    List<Article> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Article>(
      rows,
      transaction: transaction,
    );
  }

  Future<Article> insertRow(
    _i1.Session session,
    Article row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Article>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Article>> update(
    _i1.Session session,
    List<Article> rows, {
    _i1.ColumnSelections<ArticleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Article>(
      rows,
      columns: columns?.call(Article.t),
      transaction: transaction,
    );
  }

  Future<Article> updateRow(
    _i1.Session session,
    Article row, {
    _i1.ColumnSelections<ArticleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Article>(
      row,
      columns: columns?.call(Article.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Article> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Article>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Article row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Article>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ArticleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Article>(
      where: where(Article.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ArticleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Article>(
      where: where?.call(Article.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
