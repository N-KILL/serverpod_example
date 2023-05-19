import 'package:serverpod/serverpod.dart';
import 'package:testing_server/src/generated/protocol.dart';

class UserEndpoint extends Endpoint {
  Future<bool> registerUser(Session session, User user) async {
    try {
      await User.insert(
        session,
        user,
      );
      return true;
    } catch (e, st) {
      throw Exception('$e \n $st');
    }
  }
}

class GetUserEndpoint extends Endpoint {
  Future<List<User>> getUsers(
    Session session,
  ) async {
    try {
      final userList = await User.find(session);
      return userList;
    } catch (e, st) {
      throw Exception('$e \n $st');
    }
  }
}
