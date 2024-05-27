class User {
  String? name;
  String? email;
  int? age;
}

User? createUser() {
  return null;
}

void main() {
  var user = User()
    ..name = "Fahmi Azzuhri"
    ..email = "fahmi@example.com"
    ..age = 22;
  print(user.name);
  print(user.email);
  print(user.age);

  User? user2 = createUser()
    ?..name = "Fahmi Azzuhri"
    ..email = "fahmi@example.com"
    ..age = 22;
}
