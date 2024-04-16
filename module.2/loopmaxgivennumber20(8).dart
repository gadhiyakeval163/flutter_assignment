import 'dart:io';

void main() {
  stdout.write('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  int maxDigit = findMaxDigit(number);
  print('Maximum digit in the number: $maxDigit');
}

int findMaxDigit(int num) {
  int maxDigit = 0;
  while (num != 0) {
    int digit = num % 10;
    maxDigit = (digit > maxDigit) ? digit : maxDigit;
    num ~/= 10;
  }
  return maxDigit;
}
