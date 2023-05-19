/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:testing_client/src/protocol/user.dart' as _i3;
import 'dart:io' as _i4;
import 'protocol.dart' as _i5;

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointTesting extends _i1.EndpointRef {
  _EndpointTesting(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'testing';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'testing',
        'hello',
        {'name': name},
      );
}

class _EndpointUser extends _i1.EndpointRef {
  _EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<bool> registerUser(_i3.User user) =>
      caller.callServerEndpoint<bool>(
        'user',
        'registerUser',
        {'user': user},
      );
}

class _EndpointGetUser extends _i1.EndpointRef {
  _EndpointGetUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'getUser';

  _i2.Future<List<_i3.User>> getUsers() =>
      caller.callServerEndpoint<List<_i3.User>>(
        'getUser',
        'getUsers',
        {},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i4.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i5.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    example = _EndpointExample(this);
    testing = _EndpointTesting(this);
    user = _EndpointUser(this);
    getUser = _EndpointGetUser(this);
  }

  late final _EndpointExample example;

  late final _EndpointTesting testing;

  late final _EndpointUser user;

  late final _EndpointGetUser getUser;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'testing': testing,
        'user': user,
        'getUser': getUser,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
