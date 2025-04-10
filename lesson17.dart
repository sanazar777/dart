// import 'dart:ffi';

// void main(List<String> args) {
//   var sanya = Human(name: 'sanya', years: 42, height: 177);
//   var sanazar = Human(name: 'sanazar', years: 24, height: 176);
//   var orazmuhammet = Human(name: 'orazmuhammet', years: 19, height: 180);
//   var samuhammet = Human(name: 'samuhammet', years: 24, height: 178);

//   print(sanazar.height);
// }

// class Human {
//   Human({required this.name, required this.years, required this.height});
//   String name;
//   int years;
//   double height;

//   //dowamy bar ....
// }

void main(List<String> args) {
  var sanya = Human(name: 'Sasa', age: 23, height: 190);

  print(sanya);
  print(sanya.name);
  print(sanya.height);

  sanya.age = 24;
  print(sanya.age);
}

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
