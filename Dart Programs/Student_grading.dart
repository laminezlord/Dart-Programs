import 'dart:io';

void main() {
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!;

  List<double> scores = [];

  for (int i = 0; i < 5; i++) {
    stdout.write("Enter score for subject ${i + 1}: ");
    double score = double.parse(stdin.readLineSync()!);
    scores.add(score);
  }

  double total = 0;
  for (double s in scores) {
    total += s;
  }

  double average = total / scores.length;

  String grade;
  if (average >= 70) {
    grade = "A";
  } else if (average >= 60) {
    grade = "B";
  } else if (average >= 50) {
    grade = "C";
  } else if (average >= 45) {
    grade = "D";
  } else {
    grade = "F";
  }

  int passed = 0;
  for (double s in scores) {
    if (s >= 50) {
      passed++;
    }
  }

  int failed = scores.length - passed;

  print("\n Student Report ");
  print("Name: $name");
  print("Scores: $scores");
  print("Total: $total");
  print("Average: $average");
  print("Grade: $grade");

  if (failed > 2) {
    print("Repeat class");
  } else {
    print("Promoted");
  }
}