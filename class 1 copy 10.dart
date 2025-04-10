// Animal klassasy
abstract class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void speak(); // Abstract method
}

// Dog klassasy - Animal klassasyna miras alýar
class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void speak() {
    print('$name seslenýär: "Wof!"');
  }
}

// Cat klassasy - Animal klassasyna miras alýar
class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void speak() {
    print('$name seslenýär: "Meow!"');
  }
}

// Bird klassasy - Animal klassasyna miras alýar
class Bird extends Animal {
  Bird(String name, int age) : super(name, age);

  @override
  void speak() {
    print('$name seslenýär: "Caw!"');
  }
}

// Mixin - Pet
mixin Pet {
  void play() {
    print('Oýun oýnaýar!');
  }

  void feed(String food) {
    print('Oňa $food iýmit berýär.');
  }
}

// PetOwner klassasy - eýesi
class PetOwner {
  String ownerName;
  List<Animal> pets = [];

  PetOwner(this.ownerName);

  void adoptPet(Animal pet) {
    pets.add(pet);
    print('$ownerName tarapyndan täze haýwan kabul edildi: ${pet.name}');
  }

  void feedPets(String food) {
    for (var pet in pets) {
      if (pet is Pet) {
        pet.feed(food);
      }
    }
  }

  void letPetsSpeak() {
    for (var pet in pets) {
      pet.speak();
    }
  }
}

void main() {
  // PetOwner we haýwanlary döredýäris
  var owner = PetOwner('Oraz');
  var dog = Dog('Timi', 3);
  var cat = Cat('Mewi', 2);
  var bird = Bird('Garly', 1);

  // PetOwner tarapyndan haýwanlary kabul edýäris
  owner.adoptPet(dog);
  owner.adoptPet(cat);
  owner.adoptPet(bird);

  // Haýwanlaryň sesini çykarmak
  owner.letPetsSpeak(); // Haýwanlaryň sesini çykarmak

  // Haýwanlary iýmitlendirmek
  owner.feedPets('sebze');
}
