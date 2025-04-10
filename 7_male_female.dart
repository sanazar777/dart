import 'dart:io';

void main(){
  while (true) {
    String surname=stdin.readLineSync() ?? '';
    bool sanBar=false;

    for (var i = 0; i < surname.length; i++) {
      final element=surname[i];
      final san=int.tryParse(element);
      if (san != null){
        sanBar = true;
        break;
      }         
    } 
    if (surname.length<5){
      print('Nadogry');
    }
    else if (sanBar){
      print('San bar');
    }
    else {
      if (surname.endsWith('a')){
        print('Female');
      }
      else{
        print('Male');
      }
    }

  }
}