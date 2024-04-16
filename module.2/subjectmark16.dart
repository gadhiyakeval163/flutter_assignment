import 'dart:io';

void main() {
  print('Enter marks For 5 subjects:');

  int totalMarks = 500;
  int subjects = 5;

  for (int i = 1; i <= subjects; i++) {
    stdout.write('Enter marks for subject $i:');
    int marks = int.parse(stdin.readLineSync()!);

    totalMarks += marks;
  }
  double percentage = (totalMarks / (subjects * 100)) * 100;

  if (percentage > 75) {
    print('Distriction');
  } else if (percentage > 60 && percentage <= 75) {
    print('First class');
  } else if (percentage > 50 && percentage <= 60) {
    print('Second class');
  } else if (percentage > 35 && percentage <= 50) {
    print('Pass class');
  } else {
    print('Fail');
  }
}
