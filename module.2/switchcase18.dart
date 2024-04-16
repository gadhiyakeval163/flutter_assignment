import 'dart:io';
void main() {
  while (true) {
    print('Menu:');
    print('1. Addition');
    print('2. Subtraction');
    print('3. Multiplication');
    print('4. Division');
    print('5. Exit');
    print('Enter your choice (1-5): ');

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 5) {
      print('Exiting the program. Goodbye!');
      break;
    }

    print('Enter the first number: ');
    double num1 = double.parse(stdin.readLineSync()!);

    print('Enter the second number: ');
    double num2 = double.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Result: ${num1 + num2}');
        break;
      case 2:
        print('Result: ${num1 - num2}');
        break;
      case 3:
        print('Result: ${num1 * num2}');
        break;
      case 4:
        if (num2 != 0) {
          print('Result: ${num1 / num2}');
        } else {
          print('Cannot divide by zero. Please enter a non-zero divisor.');
        }
        break;
      default:
        print('Invalid choice. Please enter a valid option (1-5).');
    }
  }
}
