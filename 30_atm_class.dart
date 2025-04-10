import 'dart:io';
void main(){
  Atm().runApp();
}

class Atm {
  //property
 List users = [
  {'user':'admin', 'password':'2244', 'balance':0},
  {'user':'kings', 'password':'1234', 'balance':1000},
  {'user':'rebellion', 'password':'1020', 'balance':2000}
 ]; 

 List<User> userObject = [];
 void createUsers(){
  userObject = users.map((e) => User(
    name: e['user'],
    password: e['password'],
    balance: e['balance']
  )).toList(); 
 }
 //property
 int index=-1;
 bool exit = false;
 int wrongPassword=0;

 
 //method
  runApp(){
  createUsers();
  print('Welcome to our bank!');
  while (!exit) {
    if (index==-1) {
      var login = inputAl('login: ');
      var password = inputAl('password: ');

      for (var element in userObject) {
        if (login == element.name && password == element.password) {
          index = userObject.indexOf(element);
          wrongPassword = 0;
          break;
        }
        //Ters gireninde cykgynsyz yagday
        if (login==element.name) {
          var reversedPassword = element.password.split('').reversed.join();
          if (reversedPassword==password) {
            print('\ncykgynsyz yagday'.toUpperCase());
            print('!!!!!!!!!!!!!!!!\n');
          }
          wrongPassword++;
        }
        if (wrongPassword>0) {
          print('Wrong password = $wrongPassword');
        }
        if (wrongPassword==3) {
          print('Bloklandy');
          exit = true;
          break;
        }        
      }
    }
    if (index!=-1) {
      var action = inputAl('', true);
      switch(action){
        case '1':
        String mukdar = inputAl("Mukdar giriz: ");
        int intMukdar = int.tryParse(mukdar) ?? 0;
        if(userObject[index].balance >= intMukdar){
          userObject[index].balance -= intMukdar;
        }else{
          print('Yeterli mukdar yok!!!');
        }
        break;
        case '2':
        String mukdar = inputAl('Mukdar giriz: ');
        userObject[index].balance += (int.tryParse(mukdar) ?? 0);
        break;
        case '3':
        print('Balance: ${users[index]['balance']}\n');
        break;
        case '4':
        exit = true;
        print('Bye bye!');
        break;
        case '5':
        index = -1;
        break;

        case '6':
        //Admin taze ulanyjynyn maglumatlaryny almaly

        if(userObject[index].name == 'admin'){
          String login= inputAl("Ulanyjy logini: ");
          String password = inputAl("Ulanyjy kody: ");

          userObject.add(User(name:login, password: password, balance:0));
          break;
        }
        default:
        print('Yalnys belgi!!!');

      }
    }
  }
 }//runApp gutardy

 String inputAl(String sozlem,[ bool fromEnum = false]){
  if (fromEnum) {
    for (var i = 0; i < Actions.values.length; i++) {
      print('${Actions.values[i].number}-${Actions.values[i].text}');
    }
  }else{
    stdout.write(sozlem);
  }
  return stdin.readLineSync() as String;
  }
  

  String makeUpperCase(String text){
    // List<String> letters = text.split('');
    // letters[0] = letters[0].toUpperCase();
    // return letters.join();

    // String firstLetter = text.substring(0,1).toUpperCase();
    // String firstletter = text[0].toUpperCase();
    // return '$firstLetter${text.substring(1)}';

    String word = '';
    for (var i = 0; i < text.length; i++) {
     if(i ==0) {
       word += text[i].toUpperCase();
      } else {
         word += text[i];
        }
    }
    return word;
 } 
}

 enum Actions{
  withdraw    (text: 'Withdraw',     number: '1'),
  deposit     (text: 'Deposit',      number: '2'),
  showBalance (text: 'Show balance', number: '3'),
  exit        (text: 'Exit',         number: '4'),
  gaytadanGir (text: 'Gaytadan gir', number: '5'),
  ulanyjyGos  (text: 'Ulanyjy gos',  number: '6');

 final String text;
 final String number;

  const Actions({ required this.text,required this.number});
 
 }

class User {
  User({
    required this.name,
    required this.password,
    required this.balance
  });
  
  String name;
  String password;
  int balance;
  
 }

