// Animal klassasy
abstract class Animal {
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight);

  void speak(); // Abstrakt usul
}

// Mammal klassasy - Animal klassasyndan miras alýar
class Mammal extends Animal {
  Mammal(String name, int age, double weight) : super(name, age, weight);

  @override
  void speak() {
    print('$name seslenýär: "Gowulaş!"');
  }
}

// Dog klassasy - Mammal klassasyndan miras alýar
class Dog extends Mammal {
  Dog(String name, int age, double weight) : super(name, age, weight);

  @override
  void speak() {
    print('$name seslenýär: "Wof!"');
  }
}

// Cat klassasy - Mammal klassasyndan miras alýar
class Cat extends Mammal {
  Cat(String name, int age, double weight) : super(name, age, weight);

  @override
  void speak() {
    print('$name seslenýär: "Meow!"');
  }
}

// Bird klassasy - Animal klassasyndan miras alýar
class Bird extends Animal {
  Bird(String name, int age, double weight) : super(name, age, weight);

  @override
  void speak() {
    print('$name seslenýär: "Caw!"');
  }
}

// Reptile klassasy - Animal klassasyndan miras alýar
class Reptile extends Animal {
  Reptile(String name, int age, double weight) : super(name, age, weight);

  @override
  void speak() {
    print('$name seslenýär: "Hiss!"');
  }
}

// Zoo klassasy - Haýwanlary dolandyrýar
class Zoo {
  String name;
  List<Animal> animals = [];

  Zoo(this.name);

  void addAnimal(Animal animal) {
    animals.add(animal);
    print('${animal.name} Zoo ya goşuldy.');
  }

  void letAnimalsSpeak() {
    for (var animal in animals) {
      animal.speak();
    }
  }

  void showAnimals() {
    print('Zoo içindäki haýwanlar:');
    for (var animal in animals) {
      print('${animal.name}, ${animal.age} ýaş, ${animal.weight} kg');
    }
  }
}

void main() {
  // Zoo we haýwanlary döredýäris
  var zoo = Zoo('Türkmen Zoo');
  var dog = Dog('Timi', 3, 10.5);
  var cat = Cat('Mewi', 2, 5.0);
  var bird = Bird('Garly', 1, 0.5);
  var reptile = Reptile('Altyn', 4, 3.0);

  // Haýwanlary Zoo a goşýarys
  zoo.addAnimal(dog);
  zoo.addAnimal(cat);
  zoo.addAnimal(bird);
  zoo.addAnimal(reptile);

  // Haýwanlaryň sesini çykarmak
  zoo.letAnimalsSpeak();

  // Haýwanlaryň maglumatlaryny görkezmek
  zoo.showAnimals();
}
