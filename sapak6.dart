import 'dart:ffi';

void main() {
  var res = sum('5', '7');
  print('Res: $res');
}

dynamic sum(a, b) => a + b;
