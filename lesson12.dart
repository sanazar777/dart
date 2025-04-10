// void main(List<String> args) {
//   final result = square(7);
//   print(result);
//   square(6);
//   square(5);
// }

// int square(int number) {
//   return number * number;
// }

void main(List<String> args) {
  var result = square(2);
  result = square(result);

  print(formatResult(result));

  var result1 = square(square(3));
  print(formatResult(result1));
}

int square(int number) {
  return number * number;
}

String formatResult(int number) {
  return 'rezultat operasiya $number';
}
