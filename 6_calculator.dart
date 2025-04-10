import 'dart:io';

void main() {
  bool work = true;

  while (true) {
    print('Birinji sany giriz: ');
    String number1 = stdin.readLineSync() ?? '';
    int number1Int = int.tryParse(number1) ?? 0;

    print('Ikinji sany giriz: ');
    String number2 = stdin.readLineSync() ?? '';
    int number2Int = int.tryParse(number2) ?? 0;

    print('Amaly sayla (+,-,/,*): ');
    String amal = stdin.readLineSync() ?? '';

    var netije;
    switch (amal) {
      case '+':
        netije = number1Int + number2Int;
        break;
      case '-':
        netije = number1Int - number2Int;
        break;
      case '/':
        netije = number1Int / number2Int;
        break;
      case '*':
        netije = number1Int * number2Int;
        break;
      default:
        print('Nadogry amal');
        break;
    }
    print('$netije');

    print('Dowam etmek ucin 1-e bas, duruzmak ucin 2-a bas');
    String check = stdin.readLineSync() ?? '';
    if (check == '2') {
      break;
    } else {
      continue;
    }
  }
}
