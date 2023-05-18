import 'package:serverpod/serverpod.dart';

class ExampleEndpoint extends Endpoint {
  Future<String> hello(Session session, String name) async {
    return "tuki";
  }
}

class TestingEndpoint extends Endpoint {
  Future<String> hello(Session session, String name) async {
    return "none";
  }
}
