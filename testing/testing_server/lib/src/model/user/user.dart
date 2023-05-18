// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String id;
  final String name;
  final String mail;
  final String password;

  User(
    this.id,
    this.name,
    this.mail,
    this.password,
  );

  User copyWith({
    String? id,
    String? name,
    String? mail,
    String? password,
  }) {
    return User(
      id ?? this.id,
      name ?? this.name,
      mail ?? this.mail,
      password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'mail': mail,
      'password': password,
    };
  }

  static User? fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) {
      return null;
    }
    return User(
      map['id'].toString(),
      map['name'].toString(),
      map['mail'].toString(),
      map['password'].toString(),
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, mail: $mail, password: $password)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.mail == mail &&
        other.password == password;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ mail.hashCode ^ password.hashCode;
  }
}
