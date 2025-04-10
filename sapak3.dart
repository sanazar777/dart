import 'package:project/project.dart' as project;

void main() {
  var nums = [5, 7, 8, 'hello', true];
  nums.add(7);
  nums.addAll([5, 6, 3, 2]);

  nums.remove(8);
  nums.removeAt(0);
  //nums.removeWhere((element) => element >= 5);

  print('First: ${nums.first}. Last: ${nums.last}. Lenghth: ${nums.length}');
}
