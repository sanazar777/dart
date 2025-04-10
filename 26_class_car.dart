void main() {
  Car car1 = Car('Green', 2025, 5);
  print(car1.modelName);
  print(car1.door);
}

class Car {
  Car(this.color, this.year, [this.door, this.modelName]);

  String? color;
  String? modelName = 'Corolla';
  String brand = 'Toyota';
  int? year;
  int? door = 4;
}
