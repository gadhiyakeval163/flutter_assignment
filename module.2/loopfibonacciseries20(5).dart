import 'dart:io';

void main() {
  stdout.write('Enter a number of terms for fibonacci series:');
  int maxNumber = int.parse(stdin.readLineSync()!);
  int a = 0, b = 1;

  print('Fibpnacci series up to $maxNumber:');

  while (a <= maxNumber) {
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
}
