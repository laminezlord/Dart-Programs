import 'dart:io';

void main() {
  const correctUsername = "Abiola";
  const correctPin = "7319";
  var attempts = 0;
  const maxAttempts = 3;

  print('Welcome to the User Authentication System. Please enter your Username and Pin to access your account');

  while (attempts < maxAttempts) {
    stdout.write("Enter your Username: ");
    String? username = stdin.readLineSync();
    stdout.write("Enter your PIN: ");
    String? inputPin = stdin.readLineSync();

    if (inputPin == correctPin && username == correctUsername) {
      print("Access granted. Welcome to your account!");
      break;
    } else {
      attempts++;
      if (inputPin != correctPin && username != correctUsername) {
        print("Incorrect Username and PIN. Please try again.");
      } else {
        if (username != correctUsername) print("Incorrect Username. Please try again.");
        if (inputPin != correctPin) print("Incorrect PIN. Please try again.");
      }
    }
  }

  if (attempts == maxAttempts) {
    print("Too many incorrect attempts. Your account has been locked.");
  }
}
