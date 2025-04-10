void main(){
  List numbers=[12, 520, 1234, 78455,465,23];
  print(numbers.runtimeType);
  // for (var san in numbers) {
  //   if (san.toString().length==2) {
  //     print('$san onluk san' );
  //   }
  //   else if (san.toString().length==3){
  //     print('$san ýüzlik san');
  //   }
  //   else if (san.toString().length==4){
  //     print('$san müňlik san');
  //   }
  //   else if (san.toString().length==5){
  //     print('$san on müňlik san');
  //   }
  // }
  numbers.removeRange(1,4);
  print('$numbers');
  // numbers.remove(12,);
  // print('$numbers');
}