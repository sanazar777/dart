import 'dart:async';

// Müşderi we Bank Sistramalaryny Modullama
abstract class Transaction {
  Future<void> execute();
}

// Custom Exception - Ýeterlik däl balans üçin
class InsufficientBalanceException implements Exception {
  final String message;
  InsufficientBalanceException(this.message);

  @override
  String toString() => 'InsufficientBalanceException: $message';
}

// Müşderi klasasy
class Customer {
  final String name;
  final String customerID;
  List<BankAccount> accounts = [];

  Customer(this.name, this.customerID);

  void addAccount(BankAccount account) {
    accounts.add(account);
    print('Müşderi ${name} üçin täze hasap goşuldy: ${account.accountNumber}');
  }
}

// BankAccount - Abstrakt klas
abstract class BankAccount<T> {
  T balance;
  final String accountNumber;
  final StreamController<T> _balanceStreamController =
      StreamController.broadcast();

  BankAccount(this.balance, this.accountNumber);

  Stream<T> get balanceUpdates => _balanceStreamController.stream;

  void updateBalance(T newBalance) {
    balance = newBalance;
    _balanceStreamController.add(balance);
  }

  Future<void> deposit(T amount);
  Future<void> withdraw(T amount);

  void dispose() {
    _balanceStreamController.close();
  }
}

// CheckingAccount - Gözegçilik hasaby
class CheckingAccount extends BankAccount<double> with LoggerMixin {
  CheckingAccount(double balance, String accountNumber)
      : super(balance, accountNumber);

  @override
  Future<void> deposit(double amount) async {
    await Future.delayed(Duration(seconds: 1));
    updateBalance(balance + amount);
    log('CheckingAccount: $amount manat goýuldy. Täze balans: $balance manat');
  }

  @override
  Future<void> withdraw(double amount) async {
    await Future.delayed(Duration(seconds: 1));
    if (balance >= amount) {
      updateBalance(balance - amount);
      log('CheckingAccount: $amount manat aýryldy. Täze balans: $balance manat');
    } else {
      throw InsufficientBalanceException('Balans ýeterlik däl!');
    }
  }
}

// Gyzyklanma hasaplamak üçin `InterestAccount` mixin-i
mixin InterestAccount on BankAccount<double> {
  double interestRate = 0.05;

  double calculateInterest() {
    return balance * interestRate;
  }

  void applyInterest() {
    var interest = calculateInterest();
    updateBalance(balance + interest);
    log('Interest: $interest manat goşuldy. Täze balans: $balance manat');
  }
}

// Täjirçilik hasaby - InterestAccount bilen
class SavingsAccount extends BankAccount<double>
    with InterestAccount, LoggerMixin {
  SavingsAccount(double balance, String accountNumber)
      : super(balance, accountNumber);

  @override
  Future<void> deposit(double amount) async {
    await Future.delayed(Duration(seconds: 1));
    updateBalance(balance + amount);
    log('SavingsAccount: $amount manat goýuldy. Täze balans: $balance manat');
  }

  @override
  Future<void> withdraw(double amount) async {
    await Future.delayed(Duration(seconds: 1));
    if (balance >= amount) {
      updateBalance(balance - amount);
      log('SavingsAccount: $amount manat aýryldy. Täze balans: $balance manat');
    } else {
      throw InsufficientBalanceException('Balans ýeterlik däl!');
    }
  }
}

// LoggerMixin - ähli bank hasaplaryny log etmek üçin
mixin LoggerMixin {
  void log(String message) {
    print('[LOG]: $message');
  }
}

// Bank klassy - müşderileri we hasaplary dolandyrýar
class Bank {
  final String bankName;
  List<Customer> customers = [];

  Bank(this.bankName);

  Customer createCustomer(String name, String id) {
    var customer = Customer(name, id);
    customers.add(customer);
    print('Täze müşderi döredildi: $name - $id');
    return customer;
  }

  Customer? findCustomer(String id) {
    return customers.firstWhere((customer) => customer.customerID == id,
        orElse: () => null);
  }
}

void main() async {
  // Täze bank döredýäris
  var bank = Bank('Türkmen Bank');

  // Täze müşderi döredip, checking we täjirçilik hasaplaryny goşýarys
  var customer1 = bank.createCustomer('Oraz', '123');
  var checkingAccount = CheckingAccount(500, 'CHK-001');
  var savingsAccount = SavingsAccount(1000, 'SVG-001');

  customer1.addAccount(checkingAccount);
  customer1.addAccount(savingsAccount);

  // Asynkron tranzaksiýalary ýerine ýetirýäris
  await checkingAccount.deposit(200);
  await savingsAccount.deposit(300);
  savingsAccount.applyInterest();

  try {
    await checkingAccount.withdraw(800);
  } catch (e) {
    print(e);
  }

  // Programma gutaranda stream-leri ýapýarys
  customer1.accounts.forEach((account) => account.dispose());
}
