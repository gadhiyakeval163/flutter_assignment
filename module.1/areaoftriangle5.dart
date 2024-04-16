import 'dart:io';
//import 'areaofcircle4.dart';
void main() {
  print("Enter the base length of the triangle:");
  double base = double.parse(stdin.readLineSync()!);

  print("Enter the  height of the triangle:");
  double height = double.parse(stdin.readLineSync()!);

  double area = 0.5 * base * height;
  print('The area of the triangle with base $base and height $height is: $area');
}
