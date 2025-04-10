// Animal klasasy
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void speak() {
    print('$name, $age ýaş, seslenýär: "Gowulaş!"');
  }
}

// Dog klasasy - Animal klassyndan miras alýar
class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void speak() {
    print('$name seslenýär: "Wof!"');
  }
}

// Cat klasasy - Animal klassyndan miras alýar
class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void speak() {
    print('$name seslenýär: "Meow!"');
  }
}

// Mixin - Pet
mixin Pet {
  void play() {
    print('Oýun oýnaýar!');
  }
}

// Dog klasasy Pet mixinini ulanýar
class PetDog extends Dog with Pet {
  PetDog(String name, int age) : super(name, age);
}

// Main funksiýasy
void main() {
  // Obýektleri döredýäris
  var dog = PetDog('Timi', 3);
  var cat = Cat('Mewi', 2);

  // Usullary çagyrýarys
  dog.speak(); // Çykdajy: Timi seslenýär: "Wof!"
  dog.play(); // Çykdajy: Oýun oýnaýar!

  cat.speak(); // Çykdajy: Mewi, 2 ýaş, seslenýär: "Gowulaş!"
}
