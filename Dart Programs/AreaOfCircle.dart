import 'dart:io';
double pi = 3.14159;

void main(){
    stdout.write("Enter a radius: ");
    double radius = double.parse(stdin.readLineSync()!);
    double area = pi*radius*radius;
    print("Area of the circle is: $area");

}