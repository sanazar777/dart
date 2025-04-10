// Animal klassasy
abstract class Animal {
  String name;
  int age;
  double weight;
  String location; // Haýwanlaryň ýerleşişi

  Animal(this.name, this.age, this.weight, this.location);

  void speak(); // Abstrakt usul
}

// Mammal klassasy - Animal klassasyndan miras alýar
class Mammal extends Animal {
  Mammal(String name, int age, double weight, String location)
      : super(name, age, weight, location);

  @override
  void speak() {
    print('$name seslenýär: "Gowulaş!"');
  }
}

// Dog klassasy - Mammal klassasyndan miras alýar
class Dog extends Mammal {
  Dog(String name, int age, double weight, String location)
      : super(name, age, weight, location);

  @override
  void speak() {
    print('$name seslenýär: "Wof!"');
  }
}

// Cat klassasy - Mammal klassasyndan miras alýar
class Cat extends Mammal {
  Cat(String name, int age, double weight, String location)
      : super(name, age, weight, location);

  @override
  void speak() {
    print('$name seslenýär: "Meow!"');
  }
}

// Bird klassasy - Animal klassasyndan miras alýar
class Bird extends Animal {
  Bird(String name, int age, double weight, String location)
      : super(name, age, weight, location);

  @override
  void speak() {
    print('$name seslenýär: "Caw!"');
  }
}

// Reptile klassasy - Animal klassasyndan miras alýar
class Reptile extends Animal {
  Reptile(String name, int age, double weight, String location)
      : super(name, age, weight, location);

  @override
  void speak() {
    print('$name seslenýär: "Hiss!"');
  }
}

// FeedingSchedule klassasy - Iýmit bermek meýilnamasy
class FeedingSchedule {
  String time; // Iýmit bermegiň wagty
  String food; // Iýmit görnüşi

  FeedingSchedule(this.time, this.food);
}

// Location klassasy - Haýwanlaryň ýerleşişi
class Location {
  String name;
  String description;

  Location(this.name, this.description);
}

// Zoo klassasy - Haýwanlary dolandyrýar
class Zoo {
  String name;
  List<Animal> animals = [];
  List<FeedingSchedule> feedingSchedules = [];
  List<Location> locations = [];

  Zoo(this.name);

  void addAnimal(Animal animal) {
    animals.add(animal);
    print('${animal.name} Zoo ya goşuldy.');
  }

  void addFeedingSchedule(FeedingSchedule schedule) {
    feedingSchedules.add(schedule);
    print(
        'Iýmit bermek meýilnamasy goşuldy: ${schedule.time} - ${schedule.food}');
  }

  void addLocation(Location location) {
    locations.add(location);
    print('New location added: ${location.name}');
  }

  void letAnimalsSpeak() {
    for (var animal in animals) {
      animal.speak();
    }
  }

  void showAnimals() {
    print('Zoo içindäki haýwanlar:');
    for (var animal in animals) {
      print(
          '${animal.name}, ${animal.age} ýaş, ${animal.weight} kg, ýerleşýär: ${animal.location}');
    }
  }

  void showFeedingSchedules() {
    print('Feeding Schedules:');
    for (var schedule in feedingSchedules) {
      print('Time: ${schedule.time}, Food: ${schedule.food}');
    }
  }

  void showLocations() {
    print('Locations in the zoo:');
    for (var location in locations) {
      print('Location: ${location.name}, Description: ${location.description}');
    }
  }
}

void main() {
  // Zoo we haýwanlary döredýäris
  var zoo = Zoo('Türkmen Zoo');
  var dog = Dog('Timi', 3, 10.5, 'Dog House');
  var cat = Cat('Mewi', 2, 5.0, 'Cat House');
  var bird = Bird('Garly', 1, 0.5, 'Bird Aviary');
  var reptile = Reptile('Altyn', 4, 3.0, 'Reptile House');

  // Haýwanlary Zoo a goşýarys
  zoo.addAnimal(dog);
  zoo.addAnimal(cat);
  zoo.addAnimal(bird);
  zoo.addAnimal(reptile);

  // Feeding schedules
  zoo.addFeedingSchedule(FeedingSchedule('08:00 AM', 'Kömeç'));
  zoo.addFeedingSchedule(FeedingSchedule('12:00 PM', 'Gylşyryk'));
  zoo.addFeedingSchedule(FeedingSchedule('05:00 PM', 'Sebze'));

  // Locations
  zoo.addLocation(Location('Dog House', 'A cozy house for dogs'));
  zoo.addLocation(Location('Cat House', 'A warm place for cats'));
  zoo.addLocation(Location('Bird Aviary', 'An open space for birds'));
  zoo.addLocation(Location('Reptile House', 'A secure area for reptiles'));

  // Haýwanlaryň sesini çykarmak
  zoo.letAnimalsSpeak();

  // Haýwanlaryň maglumatlaryny görkezmek
  zoo.showAnimals();

  // Feeding schedules and locations
  zoo.showFeedingSchedules();
  zoo.showLocations();
}
