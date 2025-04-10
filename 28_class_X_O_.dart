import 'dart:io';


void main(){

  TicTacToe X_O = TicTacToe(['1','2','3','4','5','6','7','8','9'], combinations : [
    '012',
    '345',
    '678',
    '630',
    '741',
    '852',
    '048',
    '246'
  ]);
  print(X_O.runtimeType);

  // X_O.runApp();

}


class TicTacToe{
  TicTacToe(List<String> this.numbers,{required this.combinations});
  List<String> numbers = [];
  List<String> combinations = [];

  int totalNumber = 0;
  bool xTurn = true;
  String winner = '';
  
  runApp(){
  while (totalNumber<9) {
    inputlar();
    
    xTurn=!xTurn;

    table();

    winnerCheck();

    if (winner.isNotEmpty) {
      print('$winner is winner');
      break;
    }
    
    if (winner.isEmpty && totalNumber==8) {
      print('Tie');      
    }
    totalNumber++;
  }
  }

  void inputlar(){
    stdout.write('${xTurn ? 'X' : 'O'} turn Enter number: ');
    String inputX = stdin.readLineSync() ?? '';
    int intX = int.tryParse(inputX) ?? 1;
    numbers[intX - 1] = xTurn ? 'X' : 'O';
  }  

  void table(){
    String table = '''
      |   |
    ${numbers[6]} | ${numbers[7]} | ${numbers[8]} 
      |   |
    ${numbers[3]} | ${numbers[4]} | ${numbers[5]}
      |   |
    ${numbers[0]} | ${numbers[1]} | ${numbers[2]}
    ''';
    print(table);
  }

  void winnerCheck(){
     for (var comb in combinations) {
      int xjemi = 0;
      int ojemi = 0;
      for (var san in comb.split('')) {
        if (numbers[int.parse(san)]== 'X') {
         xjemi++; 
        }
        if (numbers[int.parse(san)] == 'O') {
          ojemi++;          
        }        
      }
      if (xjemi==3){
        winner = 'X';
        break;
      }
      if (ojemi==3) {
        winner = 'O';
        break;
      }
      
    }
  }
}
