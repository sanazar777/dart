void main() {
  var bob = User('Bob', 40, true, ['footbol', 'Skate']);
  // ..name = 'Bob'
  // ..age = 40;
  print(bob.name);
}

class User {
  late String name;
  late int age;
  late bool isHappy;
  late List<String> hobbies;

  User(name, [age, isHappy, hobbies]) {
    this.name = name;
    this.age = age;
    this.isHappy = isHappy;
    this.hobbies = hobbies;
  }
}
