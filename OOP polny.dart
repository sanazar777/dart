// Esasy klass
class Employee {
  String name;
  int age;
  double _salary; // Encapsulation: Maşgalalaryň diňe içerki maglumatlary

  // Constructor
  Employee(this.name, this.age, this._salary);

  // Private metodyň içinde saklanýan maglumatlara giriş üçin getter we setter
  double get salary => _salary;
  set salary(double newSalary) {
    if (newSalary > 0) {
      _salary = newSalary;
    }
  }

  // Polymorphism üçin ulanyljak boş metoda
  void work() {
    print('$name işleýär...');
  }
}

// Miras alýan Manager klassy
class Manager extends Employee {
  Manager(String name, int age, double salary) : super(name, age, salary);

  @override
  void work() {
    print('$name (Manager) taslamalary dolandyrýar.');
  }

  void createReport() {
    print('$name hasabat düzýär.');
  }
}

// Miras alýan Developer klassy
class Developer extends Employee {
  String mainProgrammingLanguage;

  Developer(String name, int age, double salary, this.mainProgrammingLanguage)
      : super(name, age, salary);

  @override
  void work() {
    print('$name (Developer) $mainProgrammingLanguage dilinde kod ýazýar.');
  }

  void debugCode() {
    print('$name kody düzetýär.');
  }
}

// Kompaniýa klassy, dürli işgärleri kabul edýär
class Company {
  String companyName;
  List<Employee> employees = [];

  Company(this.companyName);

  void hire(Employee employee) {
    employees.add(employee);
    print('${employee.name} işe alındy.');
  }

  void showEmployees() {
    print('\n$companyName işgärleriniň sanawy:');
    for (var employee in employees) {
      print(
          '- ${employee.name}, Age: ${employee.age}, Salary: ${employee.salary}');
      employee.work();
    }
  }
}

void main() {
  // Täze kompaniýa döretdik
  var myCompany = Company('TechTurkmen');

  // Täze Manager we Developer obýektlerini döretdik
  var manager = Manager('Aýna', 35, 5000);
  var developer1 = Developer('Myrat', 28, 4000, 'Dart');
  var developer2 = Developer('Arslan', 30, 4500, 'Python');

  // Işgärleri işe aldyk
  myCompany.hire(manager);
  myCompany.hire(developer1);
  myCompany.hire(developer2);

  // Kompaniýanyň işgärleriniň sanawyny görkezýäris
  myCompany.showEmployees();
}
