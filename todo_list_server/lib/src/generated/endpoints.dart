/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/article_endpoint.dart' as _i2;
import 'package:todo_list_server/src/generated/article.dart' as _i3;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'article': _i2.ArticleEndpoint()
        ..initialize(
          server,
          'article',
          null,
        )
    };
    connectors['article'] = _i1.EndpointConnector(
      name: 'article',
      endpoint: endpoints['article']!,
      methodConnectors: {
        'getArticle': _i1.MethodConnector(
          name: 'getArticle',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['article'] as _i2.ArticleEndpoint).getArticle(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addArticle': _i1.MethodConnector(
          name: 'addArticle',
          params: {
            'article': _i1.ParameterDescription(
              name: 'article',
              type: _i1.getType<_i3.Article>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['article'] as _i2.ArticleEndpoint).addArticle(
            session,
            params['article'],
          ),
        ),
        'deleteArticle': _i1.MethodConnector(
          name: 'deleteArticle',
          params: {
            'article': _i1.ParameterDescription(
              name: 'article',
              type: _i1.getType<_i3.Article>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['article'] as _i2.ArticleEndpoint).deleteArticle(
            session,
            article: params['article'],
          ),
        ),
        'updateArticle': _i1.MethodConnector(
          name: 'updateArticle',
          params: {
            'article': _i1.ParameterDescription(
              name: 'article',
              type: _i1.getType<_i3.Article>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['article'] as _i2.ArticleEndpoint).updateArticle(
            session,
            article: params['article'],
          ),
        ),
      },
    );
  }
}
