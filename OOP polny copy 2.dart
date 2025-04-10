// Custom Exception (Özboluşly Ýalňyşlyk)
class InsufficientBalanceException implements Exception {
  final String message;
  InsufficientBalanceException(this.message);

  @override
  String toString() => 'InsufficientBalanceException: $message';
}

// Abstrakt klass - hasap
abstract class BankAccount<T> {
  T balance;
  final String accountNumber;

  BankAccount(this.balance, this.accountNumber);

  // Tranzaksiýalar üçin umumy metodlar
  void deposit(T amount);
  void withdraw(T amount);
}

// CheckingAccount (Gözegçilik hasaby)
class CheckingAccount extends BankAccount<double> {
  CheckingAccount(double balance, String accountNumber)
      : super(balance, accountNumber);

  @override
  void deposit(double amount) {
    balance += amount;
    print(
        'CheckingAccount: $amount manat goşuldy. Täze balans: $balance manat');
  }

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print(
          'CheckingAccount: $amount manat aýryldy. Täze balans: $balance manat');
    } else {
      throw InsufficientBalanceException('Balans ýeterlik däl!');
    }
  }
}

// SavingsAccount (Täjirçilik hasaby)
class SavingsAccount extends BankAccount<double> {
  double _interestRate;

  SavingsAccount(double balance, String accountNumber, this._interestRate)
      : super(balance, accountNumber);

  // Gyzyklanma hasaplaýan funksiýa
  double calculateInterest() {
    return balance * _interestRate / 100;
  }

  @override
  void deposit(double amount) {
    balance += amount;
    print('SavingsAccount: $amount manat goşuldy. Täze balans: $balance manat');
  }

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print(
          'SavingsAccount: $amount manat aýryldy. Täze balans: $balance manat');
    } else {
      throw InsufficientBalanceException('Balans ýeterlik däl!');
    }
  }
}

// Müşderi klassy
class Customer {
  final String name;
  final String customerID;
  List<BankAccount> accounts = [];

  Customer(this.name, this.customerID);

  // Täze hasap goşmak
  void addAccount(BankAccount account) {
    accounts.add(account);
    print('Täze hasap goşuldy: ${account.accountNumber}');
  }

  // Hasabyň balansyny görkezmek
  void showAccounts() {
    print('\nMüşderi: $name - $customerID');
    for (var account in accounts) {
      print(
          '- Hasap No: ${account.accountNumber}, Balans: ${account.balance} manat');
    }
  }
}

// Bank klassy - müşderileri we hasaplary dolandyrýar
class Bank {
  final String bankName;
  List<Customer> customers = [];

  Bank(this.bankName);

  // Müşderi goşmak üçin fabrika şekili
  Customer createCustomer(String name, String id) {
    var customer = Customer(name, id);
    customers.add(customer);
    print('Täze müşderi döredildi: $name - $id');
    return customer;
  }

  // Müşderi gözlemek
  Customer? findCustomer(String id) {
    return customers.firstWhere((customer) => customer.customerID == id,
        orElse: () => null);
  }
}

void main() {
  // Täze bank döretdik
  var bank = Bank('Türkmen Bank');

  // Täze müşderi döredip, iki sany hasap goşýarys
  var customer1 = bank.createCustomer('Oraz', '123');
  var checkingAccount = CheckingAccount(500, 'CHK-001');
  var savingsAccount = SavingsAccount(1000, 'SVG-001', 5.0);

  customer1.addAccount(checkingAccount);
  customer1.addAccount(savingsAccount);

  // Müşderiniň balansyny görkezýäris
  customer1.showAccounts();

  // Tranzaksiýalar: Töleg we gyzyklanma
  checkingAccount.deposit(200);
  try {
    checkingAccount.withdraw(800);
  } catch (e) {
    print(e); // Balans ýeterlik däl diýen habar berilýär
  }

  // Täjirçilik hasabynda gyzyklanma hasaplaň
  print(
      'Täjirçilik hasaby gyzyklanmasy: ${savingsAccount.calculateInterest()} manat');
}
