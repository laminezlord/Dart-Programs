import 'dart:io';

void main() {
  stdout.writeln('''Welcome to the Laminez ATM System
                    Please select an option:
                    1. Check Balance
                    2. Deposit
                    3. Withdraw
                    4. Exit''');
  String? choice = stdin.readLineSync();
  double balance = 100000.0;
  switch (choice) {
    case '1':
      stdout.writeln(
        'Your current balance is: \$${balance.toStringAsFixed(2)}',
      );
      break;
    case '2':
      stdout.writeln('Enter the amount to deposit:');
      String? depositInput = stdin.readLineSync();
      double depositAmount = double.tryParse(depositInput ?? '') ?? 0.0;
      balance += depositAmount;
      stdout.writeln(
        'Deposit successful! Your new balance is: \$${balance.toStringAsFixed(2)}',
      );
      if (depositAmount > 10000) {
        stdout.writeln(
          'Congratulations! You have received a bonus of \$100 for depositing more than \$10,000!',
        );
        balance += 100.0;
        stdout.writeln(
          'Your new balance after the bonus is: \$${balance.toStringAsFixed(2)}',
        );
      } else {
        stdout.writeln('No bonus awarded for deposits of \$10,000 or less.');
      }
      break;
    case '3':
      stdout.writeln('Enter the amount to withdraw:');
      String? withdrawInput = stdin.readLineSync();
      double withdrawAmount = double.tryParse(withdrawInput ?? '') ?? 0.0;
      if (withdrawAmount > balance) {
        stdout.writeln(
          'Insufficient funds! Your current balance is: \$${balance.toStringAsFixed(2)}',
        );
      } else {
        balance -= withdrawAmount;
        stdout.writeln(
          'Withdrawal successful! Your new balance is: \$${balance.toStringAsFixed(2)}',
        );
      }
      if (withdrawAmount > 3000) {
        stdout.writeln(
          'You have withdrawn more than \$3,000. Please be cautious with large withdrawals.',
        );
      }
      break;
    case '4':
      stdout.writeln('Thank you for using the Laminez ATM System. Goodbye!');
      break;
    default:
      stdout.writeln('Invalid option selected. Please try again.');
  }
}
