import 'dart:io';

void main() {
  stdout.write('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);
  int sum = calculateSum(number);
  print('Sum of numbers up to $number: $sum');
}

int calculateSum(int num) {
  int sum = 0;
  while (num != 0) {
    int digit = num % 10;
    sum += digit;
    num ~/= 10;
  }
  return sum;
}
