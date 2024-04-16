import 'dart:io';

void main() {
  print('enter the first number:');
  double number1 = double.parse(stdin.readLineSync()!);

  print('enter the second number');
  double number2 = double.parse(stdin.readLineSync()!);
  
  double add = number1 + number2;
  print("Addition: $add");

  double sub = number1 - number2;
  print("Subtraction: $sub");

  double mul = number1 * number2;
  print("Multiplication: $mul");

  double div = number1 / number2;
  print("Division: $div");
}
