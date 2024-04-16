import 'dart:io';

void main() {
  print('enter marks for subject 1:');
  double subject1 = double.parse(stdin.readLineSync()!);

  print('enter marks for subject 2:');
  double subject2 = double.parse(stdin.readLineSync()!);

  print('enter marks for subject 3:');
  double subject3 = double.parse(stdin.readLineSync()!);

  print('enter marks for subject 4:');
  double subject4 = double.parse(stdin.readLineSync()!);

  print('enter marks for subject 5:');
  double subject5 = double.parse(stdin.readLineSync()!);

  double totalMarks = subject1 + subject2 + subject3 + subject4 + subject5;
  print('total marks: $totalMarks');
  
  double percentage = (totalMarks / (5 * 100)) * 100;
  print('percentage: $percentage');
}
