// import 'dart:io';
// void main(){

// Terminal().islet();

// }

// class Terminal {
  
// List users = [
//   // User(user: 'admin',     password: '0000', balance: 0 ),
//   // User(user: 'kings',     password: '1212', balance: 1000),
//   // User(user: 'rebellion', password: '4445', balance: 2000,) 
  
//     {'user': 'admin', 'password': '0000', 'balance': 0},
//     {'user': 'rebellion', 'password': '4445', 'balance': 2000},
//     {'user': 'kings', 'password': '1212', 'balance': 1000}
//  ];
//  List<User> userObject = [];
 
//  void createUsers(){
//   userObject = users.map((e) => User(
//      : e['user'],
//     password : e['password'],
//     balance : e['balance']
//   )
//   ).toList;

//  }
  
//   int index = -1;
  
//   bool exit = false;
//   int wrongPassword = 0;

//   islet(){

  
//    while(!exit){
//    print('Welcome to our Bank!');
//     if (index == -1){
     
//       var login = inputAl('login: ');
     
//       var password = inputAl('password: ');

//       for (var element in userObject) {
//         if (login == element.user && password == element.password) {
//           index = userObject.indexOf(element);
//           wrongPassword = 0;
//           print('Succesful login!');
//           break;
//         }

//         //Kody ters giraninde 'Cykgynsyz  yagday'
//         if (login == element.user) {
//           var reversedPassword =element.password.split('').reversed.join();
//           if (reversedPassword == password) {
//             print('\ncykgynsyz yagaday'.toUpperCase());
//             print('!!!!!!!!!!!!!\n');
//           }
//           wrongPassword++;
//         }
//       }
//       print('Wrong password ==> $wrongPassword');
//       if (wrongPassword==3) {
//       print('Bloklandy');
//       exit=true;
//       break;
//       }
//     }
//     if (index!=-1) {
//      print("""Choose action 
//      1 - Withdrawl 
//      2 - Deposit
//      3 - Show balance
//      4 - Exit
//      5 - Gaytadan gir
//      6 - Ulanyjy gosh
//      """);
//      var action = stdin.readLineSync() as dynamic;
//      switch (action){
//       case '1':
//       var mukdar = inputAl('Mukdar giriz: ');
//       int intMukdar = int.tryParse(mukdar) ?? 0;
//       if (userObject[index].balance !>= intMukdar){
//         userObject[index].balance -= intMukdar;
//       }
//       else{
//         print('yeterli mukdar yok'.toUpperCase()); 
//         }
//         break;

//         case '2':
//         var mukdar = inputAl('Mukdar giriz: ');
//         userObject[index].balance += int.tryParse(mukdar) ?? 0;
//         break;

//         case '3':
//         print('Balance: ${users[index].balance}\n');
//         break;

//         case '4':
//         exit = true;
//         print('Bye bye!');
//         break;

//         case '5':
//         index = -1;
//         break;

//         case '6':
//         // Eger admin taze ulanyjynyn maglumatlaryny almaly we
//         //ulanyjylaryn arasyna gosmaly
//         if (userObject[index].user == 'admin'){
//           stdout.write("Ulanyjy logini: ");
//           var login = stdin.readLineSync() as String;
//           stdout.write('Ulanyjy kody: ');
//           var password= stdin.readLineSync() as String;
//           // Map newUser = {};
//           // newUser['user'] = login;
//           // newUser['password'] = password;
//           // newUser ['balance'] = 0;
//           userObject.add(
//             User (user: login, password: password, balance: 0)
//           );
//           // users.add(
//           //  {
//           //    'user': login,
//           //    'password: password,
//           //    'balance': 0,
//           //  }
//           //);
//           break;
//         }
//         default:
//         print('Yalnysh belgi');
//       }
//     }
//    }
//   }
//   inputAl(String sozlem){
//   stdout.write(sozlem);
//      return stdin.readLineSync() as String;
//  }
//  }

//  class User {
//   User({required this.password, required this.balance, required this.user});


//   String password;
//   String user;
//   int balance;

//  }

// String makeUpperCase(String soz ){
//   return soz.toUpperCase();

//  }
 