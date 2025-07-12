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

//Fuzzy Search / Regex Search
  List<String> names = ["Ali", "Ahmed", "Zara"];
String query = "a";
List<String> filtered = names.where((name) => name.toLowerCase().contains(query)).toList();

//map
Map<String, int> map = {"Ali": 24, "Ahmed": 30};
bool found = map.containsKey("Ali");

}
