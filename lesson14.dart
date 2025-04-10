// void main(List<String> args) {
//   print(grateOrLess(3, 2));
// }

// String grateOrLess(int a, int b) {
//   if (a > b) {
//     return 'bolse';
//   }
//   return 'mense';
// }

void main(List<String> args) {
  print(greateOrLess(4, 4));
}

String greateOrLess(int a, int b) {
  return a == b
      ? 'sanlar dogry'
      : a > b
          ? 'uly'
          : 'kici';
}
