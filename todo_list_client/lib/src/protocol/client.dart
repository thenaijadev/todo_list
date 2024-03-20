/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:todo_list_client/src/protocol/article.dart' as _i3;
import 'protocol.dart' as _i4;

/// {@category Endpoint}
class EndpointArticle extends _i1.EndpointRef {
  EndpointArticle(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'article';

  _i2.Future<List<_i3.Article>> getArticle({String? keyword}) =>
      caller.callServerEndpoint<List<_i3.Article>>(
        'article',
        'getArticle',
        {'keyword': keyword},
      );

  _i2.Future<bool> addArticle(_i3.Article article) =>
      caller.callServerEndpoint<bool>(
        'article',
        'addArticle',
        {'article': article},
      );

  _i2.Future<bool> deleteArticle({required _i3.Article article}) =>
      caller.callServerEndpoint<bool>(
        'article',
        'deleteArticle',
        {'article': article},
      );

  _i2.Future<_i3.Article> updateArticle({required _i3.Article article}) =>
      caller.callServerEndpoint<_i3.Article>(
        'article',
        'updateArticle',
        {'article': article},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    article = EndpointArticle(this);
  }

  late final EndpointArticle article;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {'article': article};

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
