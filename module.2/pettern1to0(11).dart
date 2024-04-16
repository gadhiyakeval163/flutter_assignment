import 'dart:io';

void main() {
  int numberOfRows = 5;

  for (int i = 0; i < numberOfRows; i++) {
    for (int j = 0; j <= i; j++) {
      if (j % 2 == 0) {
        stdout.write('1 ');
      } else {
        stdout.write('0 ');
      }
    }
    print('');
  }
}
