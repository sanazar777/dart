import 'dart:io';

void main() {
  Atm().run();
}

class Atm {
  //property
  List users = [
    {'user': 'admin', 'password': '2244', 'balance': 0},
    {'user': 'kings', 'password': '1234', 'balance': 1000},
    {'user': 'rebellion', 'password': '1020', 'balance': 2000}
  ];

  List<User> userObject = [];

  void createUsers() {
    userObject = users
        .map((e) => User(
            name: e['user'], password: e['password'], balance: e['balance']))
        .toList();
  }

  // property
  int index = -1;
  int wrongPassword = 0;
  bool exit = false;

  run() {
    createUsers();
    print(userObject);
    print('Welcome to our bank');
    while (!exit) {
      if (index == -1) {
        var login = inputAl('login: ');
        var password = inputAl('password: ');
        for (var element in userObject) {
          if (login == element.name && password == element.password) {
            index = userObject.indexOf(element);
            wrongPassword = 0;
            print('Succelfull login');
            break;
          }
          if (login == element.name) {
            var reversedPassword = element.password.split('').reversed.join();
            if (password == reversedPassword) {
              print('\ncykgynsyz yagday'.toUpperCase());
              wrongPassword++;
              break;
            }
            if (wrongPassword > 0) {
              print('Wrong password => $wrongPassword');
            }
            if (wrongPassword == 3) {
              print('Bloklandy');
              exit = true;
              break;
            }
          }
        }
      }
      if (index != -1) {
        var action = inputAl('', true);
        switch (action) {
          case '1':
            String mukdar = inputAl('Mukdar giriz: ');
            int intMukdar = int.tryParse(mukdar) ?? 0;
            if (userObject[index].balance >= intMukdar) {
              userObject[index].balance -= intMukdar;
            }
            break;
          case '2':
            String mukdar = inputAl('Mukdar giriz: ');
            userObject[index].balance += int.tryParse(mukdar) ?? 0;
            break;
          case '3':
            print('Balance: ${userObject[index].balance}');
            break;
          case '4':
            exit = true;
          case '5':
            index = -1;
          case '6':
            if (userObject[index].name == 'admin') {
              var login = inputAl("Ulanyjy logini: ");
              var password = inputAl("Ulanyjy kody: ");
              userObject.add(User(name: login, password: password, balance: 0));
            }
            break;
          default:
            print('Yalnysh belgi!');
        }
      }
    }
  }

  String inputAl(String sozlem, [bool fromEnum = false]) {
    if (fromEnum) {
      for (var i = 0; i < Actions.values.length; i++) {
        print('${Actions.values[i].number}${Actions.values[i].text}');
      }
    } else {
      stdout.write(sozlem);
    }
    return stdin.readLineSync() as String;
  }
}

enum Actions {
  withdraw(number: '1 - ', text: 'Withdraw'),
  deposit(number: '2 - ', text: 'Deposit'),
  showBalance(number: '3 - ', text: 'Show balance'),
  exit(number: '4 - ', text: 'Exit'),
  gaytadanGir(number: '5 - ', text: 'Gaytadan gir'),
  ulanyjyGos(number: '6 - ', text: 'Ulanujy gos');

  final String number;
  final String text;

  const Actions({required this.number, required this.text});
}

class User {
  User({required this.name, required this.password, required this.balance});

  String name;
  String password;
  int balance;
}
