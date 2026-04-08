import 'dart:io';

void main() {
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  switch (age ~/ 10) { 
    case 0:
    case 1:
      if (age <= 13) {
        print("You are a Child");
      } else {
        print("You are a Teenager");
      }
      break;
    case 2:
    case 3:
    case 4:
    case 5:
      print("You are an Adult");
      break;
    default:
      print("You are a Senior");
  }
}