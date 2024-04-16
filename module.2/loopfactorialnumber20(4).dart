import 'dart:io';

void main() {
  stdout.write('Enter a number to find its factorial:');
  int number = int.parse(stdin.readLineSync()!);

  int factorial = calculateFactorial(number);
  print('Factorial of $number is: $factorial');
}

int calculateFactorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calculateFactorial(n - 1);
  }
}
