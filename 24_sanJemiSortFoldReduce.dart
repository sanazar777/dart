sanlarynJemi(List sanlar){
  int sum=0;
 for (int element in sanlar) {
  if (element>0) {
    sum+=element;
  }   
 }
 return (sum);
}

void main(){
  List<int> numbers = [1,2,3,4,5,6,7,8,9];
   

  //  int jemi = numbers.fold(0, (a,b){
  //   return a+b;
  //  });
  // int jemi = numbers.reduce((a,b){
  //   return a+b;
  // });
  //  print(jemi);
  List<String> words = ['word', 'banana', 'enter'];
  words.sort((a,b){
    return a.length.compareTo(b.length);
  });
  print(words);

  //print(sanlarynJemi(numbers));
}