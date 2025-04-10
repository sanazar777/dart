import 'dart:async';

// Mixin - Tranzaksiýa maglumatlaryny log edýän
mixin Logger {
  void log(String message) {
    print('[LOG] $message');
  }
}

// Custom Exception - Ýeterlik däl balans üçin
class InsufficientBalanceException implements Exception {
  final String message;
  InsufficientBalanceException(this.message);

  @override
  String toString() => 'InsufficientBalanceException: $message';
}

// Abstrakt BankAccount klassy
abstract class BankAccount<T> with Logger {
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

// CheckingAccount - Checking hasaby üçin klass
class CheckingAccount extends BankAccount<double> {
  CheckingAccount(double balance, String accountNumber)
      : super(balance, accountNumber);

  @override
  Future<void> deposit(double amount) async {
    await Future.delayed(Duration(seconds: 1)); // Asinxron operasiýa
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

// Customer - Müşderi klasasy
class Customer {
  final String name;
  final String customerID;
  final List<BankAccount> accounts = [];
  StreamSubscription? balanceSubscription;

  Customer(this.name, this.customerID);

  void addAccount(BankAccount account) {
    accounts.add(account);
    print('Täze hasap goşuldy: ${account.accountNumber}');

    // Observer Pattern - Balans üýtgeýän mahaly habar berýär
    balanceSubscription = account.balanceUpdates.listen((newBalance) {
      print('$name üçin täze balans: $newBalance manat');
    });
  }

  void dispose() {
    balanceSubscription?.cancel();
    accounts.forEach((account) => account.dispose());
  }
}

// Bank klassy - müşderileri we hasaplary dolandyrýar
class Bank {
  final String bankName;
  final List<Customer> customers = [];

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
  var bank = Bank('Türkmen Bank Asynk');

  // Täze müşderi döredip, checking hasaby goşýarys
  var customer1 = bank.createCustomer('Oraz', '123');
  var checkingAccount = CheckingAccount(500, 'CHK-001');
  customer1.addAccount(checkingAccount);

  // Asynkron tranzaksiýalary ýerine ýetirýäris
  await checkingAccount.deposit(200); // 1 sekunt gijä galýar
  try {
    await checkingAccount.withdraw(800); // 1 sekunt gijä galýar
  } catch (e) {
    print(e);
  }

  // Programma gutaranda stream-leri ýapýarys
  customer1.dispose();
}
