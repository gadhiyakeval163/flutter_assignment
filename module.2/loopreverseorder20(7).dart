import 'dart:io';

void main() {
  stdout.write('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  int reversednumber = reverseNumber(number);
  print('Number in reverse order: $reversednumber');
}

int reverseNumber(int num) {
  int reversed = 0;
  while (num > 0) {
    int digit = num % 10;
    reversed = reversed * 10 + digit;
    num ~/= 10;
  }
  return reversed;
}
