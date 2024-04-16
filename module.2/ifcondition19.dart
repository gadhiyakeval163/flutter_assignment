import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('1.Area of Triangle');
    print('2.Area of Rectangle');
    print('3.Area of Circle');
    print('4.Exit');

    stdout.write('Enter your choice(1-4):');
    String choice = stdin.readLineSync() ?? '';
    print('');

    switch (choice) {
      case '1':
        calculateTriangleArea();
        break;
      case '2':
        calculateRectangleArea();
        break;
      case '3':
        calculateCircleArea();
        break;
      case '4':
        print('Exiting the program. Goodbyy!');
        return;
      default:
        print('Invalid choice.please enter a valid option.');
        break;
    }
    print('\n--------------------------\n');
  }
}

void calculateTriangleArea() {
  double base = getNumber('Enter the Base of the Triangle:');
  double height = getNumber('Enter the Height of the Triangle:');

  double area = 0.5 * base * height;
  print('Area of the Triangle: $area');
}

void calculateRectangleArea() {
  double lenght = getNumber('Enter the Lenght of the Rectangle:');
  double width = getNumber('Enter the Width of the Rectangle:');

  double area = lenght * width;
  print('Area of the Rectangle: $area');
}

void calculateCircleArea() {
  double radius = getNumber('Enter the Base of the Circle:');

  double area = pi * pow(radius, 2);
  print('Area of the Circle: $area');
}

double getNumber(String prompt) {
  stdout.write('prompt');
  String input = stdin.readLineSync() ?? '0';
  return double.parse(input);
}
