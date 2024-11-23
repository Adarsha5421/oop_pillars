class BankAccount {
  // private instance of variable
  double _balance;

  // constructor to initialize balance
  BankAccount(this._balance);

  // getter to access the private balance variable
  // double getBalance() => _balance;
  double getBalance() {
    return _balance;
  }

  // setter to update the balance with validation
  setBalance(double newBalance) {
    if (newBalance >= 0) {
      _balance = newBalance;
    } else {
      print('Invalid balance. Balance cannot be negative');
    }
  }

  // method to deposit  money
  void deposit(double amount) {
    if (amount >= 0) {
      _balance += amount;
      print('Deposited: $amount to your account');
    } else {
      print('Invalid deposit amount');
    }
  }

  // Method to  withdraw money
  void withdraw(double amount) {
    if (amount >= 0 && amount <= _balance) {
      print('Withdrew: $amount from your account');
    } else {
      print('Invalid withdrawl amount or insufficient funds');
    }
  }
}

void main() {
  // Creating a BankAccount object
  var account = BankAccount(100);
  // accessing the balance using the getter
  print('The current balance is ${account._balance}');

  // Depositing money
  account.deposit(200);
  print("Current Balance: ${account._balance}");

  // Withdrawing money
  account.withdraw(25);
  print("Final Balance: ${account._balance}");
}