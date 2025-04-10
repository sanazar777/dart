import 'dart:io';

void main(List<String> args) {
  final numbers = <String, double>{
    "Sanazar": 23,
    "Samuhammet": 22,
    "Orazmuhammet": 20,
  };

  print(numbers['Sanazar']);
  numbers["Hezret"] = 22;
  print(numbers);
  numbers.remove('Sanazar');
  print(numbers);
  numbers.addAll({
    "Sanazar1": 24,
    "Sanazar2": 54,
    "hezret324": 54,
  });
  print(numbers);
  print(numbers.length);
  print(numbers.keys);
  print(numbers.values.toList());
  print(numbers.keys.toList());
  print(numbers.containsKey('Sanazar1'));
  print(numbers.containsValue(24));
}
