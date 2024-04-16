import 'dart:io';

void main() {
  print("Enter year:");
  String input = stdin.readLineSync()!;

  int year = int.parse(input);
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("$year is leap year.");
  } else {
    print("$year is not leap year.");
  }
}
