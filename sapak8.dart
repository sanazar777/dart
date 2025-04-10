import 'dart:io';

void main(List<String> args) {
  bool isXturn = true;

  List<String> numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];

  while (true) {
    print('''
|   |   |   |
| ${numbers[0]} | ${numbers[1]} | ${numbers[2]} |
|   |   |   |
| ${numbers[3]} | ${numbers[4]} | ${numbers[5]} |
|   |   |   |
| ${numbers[6]} | ${numbers[7]} | ${numbers[8]} |
|   |   |   |
''');
    String input = stdin.readLineSync() ?? '';
    if (numbers.contains(input)) {
      int numInt = int.tryParse(input) ?? 0;
      numbers[numInt - 1] = isXturn ? 'X' : '0';

      isXturn = !isXturn;
    } else if (input.toLowerCase() == 'q') {
      break;
    } else {
      print('Dogry san giriz!!!');
    }
  }
}
