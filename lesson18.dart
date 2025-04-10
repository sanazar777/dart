void main(List<String> args) {
  var sanya = Human(name: 'Sasa', age: 23, height: 190);

  print(sanya);
  

class Human {
  Human({
    required this.name,
    required this.age,
    required this.height,
  });

  String name;
  int age;
  double height;
}
}