void main(){
  String name= 'kenek';
  List listName=name.split('');
  print(listName);

  List rList=listName.reversed.toList();
  print(listName);
  String joinedReversed = rList.join();
  print(joinedReversed);
  print(name == joinedReversed ? 'polnedromik' : 'polendromik dal');




  // if (name==joinedReversed) {
  //   print('Polendrom');
  // } 
  // else{
  //   print('Polendrom dal');
  //  }

  
}