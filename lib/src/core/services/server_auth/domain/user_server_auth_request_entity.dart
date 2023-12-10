class UserServerAuthRequestEntity {
  final String? email;
  final String? token;
  final String? name;
  final String password;

  UserServerAuthRequestEntity(
      {required this.email,
      required this.token,
      required this.name,
      required this.password});
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'email': email,
      'token': token,
      'name': name,
      'password': password,
    };
    return data;
  }
}
