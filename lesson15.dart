// void main(List<String> args) {
//   try {
//     sum(1, 2);
//   } catch (e) {
//     print('yalnyshlyklar doredi');
//   }
// }

// int sum(int a, int b) {
//   throw UnimplementedError();
// }

void main(List<String> args) {
  try {
    print(divide(1, 0));
  } catch (e) {
    print('yalnyshlyklar boldy\n' + e.toString());
  }
}

num divide(num a, num b) {
  return a / b;
}
