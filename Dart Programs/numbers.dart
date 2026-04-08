import 'dart:io';

void main(){
  print("Enter a number:");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter a number:");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter a number:");
  int num3 = int.parse(stdin.readLineSync()!);

  if (num1 == num2 && num2 == num3){
    print("All numbers are equal");
  } else if (num1 == num2 || num1 == num3 || num2 == num3){
    print("Two numbers are equal");
  } else {
    print("All numbers are different");
  }
  }
