// Abstrakt klass
abstract class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void
      showInfo(); // Abstrakt metoda, her bir topar agzasynyň maglumatyny görkezmek üçin
}

// Interfeýsler
abstract class Teachable {
  void teach();
}

abstract class Learnable {
  void study();
}

// Professor klassy, Person-dan miras alýar we Teachable interfeýsini ulanýar
class Professor extends Person implements Teachable {
  String subject;

  Professor(String name, int age, this.subject) : super(name, age);

  @override
  void showInfo() {
    print('Professor: $name, Age: $age, Subject: $subject');
  }

  @override
  void teach() {
    print('$name $subject boýunça sapak berýär.');
  }
}

// Student klassy, Person-dan miras alýar we Learnable interfeýsini ulanýar
class Student extends Person implements Learnable {
  String major;

  Student(String name, int age, this.major) : super(name, age);

  @override
  void showInfo() {
    print('Student: $name, Age: $age, Major: $major');
  }

  @override
  void study() {
    print('$name $major boýunça okaýar.');
  }
}

// Admin işgäri üçin klass, diňe maglumatlary görkezýär
class AdminStaff extends Person {
  String position;

  AdminStaff(String name, int age, this.position) : super(name, age);

  @override
  void showInfo() {
    print('AdminStaff: $name, Age: $age, Position: $position');
  }

  void manage() {
    print('$name edara işlerini dolandyrýar.');
  }
}

// Kompozisiýa üsti bilen ähli topar agzalaryny saklaýan University klassy
class University {
  String name;
  List<Person> members = [];

  University(this.name);

  // Agza goşmak funksiýasy
  void addMember(Person person) {
    members.add(person);
    print('${person.name} uniwersitete goşuldy.');
  }

  // Bütin topar agzalarynyň maglumatyny görkezýär
  void showAllMembers() {
    print('\n$name Uniwersitetiniň Topar Agzalary:');
    for (var member in members) {
      member.showInfo();
      // Polymorphism: Her agzanyň aýratyn roluna görä özboluşly metodlary ulanylýar
      if (member is Teachable) {
        member.teach();
      } else if (member is Learnable) {
        member.study();
      } else if (member is AdminStaff) {
        member.manage();
      }
      print('---');
    }
  }
}

void main() {
  // Uniwersiteti döredýäris
  var myUniversity = University('Türkmen Uniwersiteti');

  // Professor, Student, we AdminStaff obýektlerini döredýäris
  var professor = Professor('Meret', 50, 'Fizika');
  var student = Student('Aýna', 21, 'Matematika');
  var admin = AdminStaff('Gülşat', 35, 'Edara Başlygy');

  // Agzalary goşýarys
  myUniversity.addMember(professor);
  myUniversity.addMember(student);
  myUniversity.addMember(admin);

  // Bütün agzalaryň maglumatlaryny görkezýäris
  myUniversity.showAllMembers();
}
