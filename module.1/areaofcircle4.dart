import 'dart:io';
//import 'dart:math';
void main() {
  print('enter the radius of the circle: ');
  double radius = double.parse(stdin.readLineSync()!);

  double area = 3.14 * radius * radius;

  print('The area of the circle with radius $radius is: $area');
}
