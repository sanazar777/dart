void main(List<String> args) {
  final student = { "merdan" : 5, "Oraz":4, "Samuhammet":5, };
  print(student);
  student['nazar'] = 5;
  print(student);
  student.remove("nazar");
  print(student);
  student.addAll({"nazar": 3, "berdi": 2});
  print(student);
  print(student.length);
  print(student.keys.toList());
  print(student.values.toList());

  print(student.containsKey('nazar'));
  print(student.containsValue(1));

  print(student.containsValue(5));
  print(student.containsKey('key'));
}