// Haywan klasasy
class Animal {
  // Properties
  String name;
  int age;

  // Constructor (konstructor)
  Animal(this.name, this.age);

  // Method (usul)
  void speak() {
    print('$name, $age ýaş, seslenýär: "Gowulaş!"');
  }
}

void main() {
  // Haywan klassynyň täze obýekti
  var dog = Animal('Timi', 3);

  // Usul bilen işlemek
  dog.speak(); // Çykdajy: Timi, 3 ýaş, seslenýär: "Gowulaş!"
}
