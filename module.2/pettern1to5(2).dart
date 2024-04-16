import 'dart:io';

void main() {
  int numberOfSteps = 5;
  for (int i = 1; i <= numberOfSteps; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(j);
    }
    print('');
  }
}
