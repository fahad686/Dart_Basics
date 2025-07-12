class User {
  String name;
  int age;
  User(this.name, this.age);
}

void main() {
  List<User> users = [
    User('Ali', 30),
    User('Fahad', 25),
    User('Zara', 28),
  ];

  User? result = users.firstWhere(
    (user) => user.name == 'Fahad',
    orElse: () => User('Not Found', 0),
  );

  print('${result.name} - ${result.age}');
}
