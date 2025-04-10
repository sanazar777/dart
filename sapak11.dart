void main(List<String> args) {
  var numbers = ['1', '2', '3', '4', '5'];
  var squared = numbers.map((num) => int.parse(num) * int.parse(num)).toList();

  print(squared);
}
