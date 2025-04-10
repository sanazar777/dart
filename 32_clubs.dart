import 'dart:io';
void main(){

}

class School {
  List groups = [NewGroups('Computer science')];

  deleteGroup(int san){
    groups.removeAt(san -1);
  }

  addGroup(String at){
    groups.add(NewGroups(at));
  }

  showGroups(){
    for (var i = 0; i < groups.length; i++) {
      print('${i+1} - ${groups[i].name}');
    }
  }

  bool exit = false;

  run(){
    print('Welcome to school system');
    String kod = inputAl('kod: ');
    if (kod == '123') {
      showGroups();
      String actions = inputAl('1-add group 2-delete group 3-exit');
      switch (actions) {
        case '1':
          String groupname= inputAl('Enter new group name: ');
          addGroup(groupname);
          showGroups();
          break;
        case '2':
          int san = int.tryParse(inputAl('Enter group number: ') ?? '') ?? -1;
          deleteGroup(san);
          break;
        case '3':
          exit = true;
          break;
        default:
        print('Incorrect command');
      }
    }

  }
  
  inputAl(String text){
    stdout.write(text);
    return stdin.readLineSync() ?? '';
  }
}

class NewGroups {
  String name;
  NewGroups(this.name);
}