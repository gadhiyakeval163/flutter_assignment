import 'dart:io';

void main() {
  int numberOfRows = 5;

  for (int i = 1; i <= numberOfRows; i++) {
    for (int j = 1; j <= i; j++) {
      int square = i * i;
      stdout.write('$square ');
    }
    print('');
  }
}
