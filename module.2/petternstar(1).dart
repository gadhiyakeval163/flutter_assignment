import 'dart:io';

void main() {
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j <= i; j++) {
      if (j <= i) {
        stdout.write('*');
      } else {
        stdout.write('');
      }
    }
    print('');
  }
}
