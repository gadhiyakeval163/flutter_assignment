import 'dart:io';

void main() {
  stdout.write('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  int sumFirstLastDigit = calculateSumFirstLastDigit(number);
  print('Sum of first and last digit of $number: $sumFirstLastDigit');
}

int calculateSumFirstLastDigit(int num) {
  int lastDigit = num % 10;

  while (num >= 10) {
    num ~/= 10;
  }
  int firstDigit = num;
  return firstDigit + lastDigit;
}
