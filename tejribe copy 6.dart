void main(List<String> args) {
  for (var i = 0; i <= 5; i++) {
    print('object $i');
  }

  final students = ['masha', 'lera', 'anya'];
  print(students);

  for (var student in students) {
    print(student);
  }
for (var i = 0; i < students.length; i++) {
  students[i] = '${students[i]} $i'; 
}
print(students);

final a =2;
final n =9;

var rezult = a;

for (var i = 1; i < n; i++) {
  rezult = rezult * a;  
}
print(rezult);

}