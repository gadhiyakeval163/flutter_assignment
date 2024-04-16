import 'dart:io';

void main() {
  print("Enter the principle amount:");
  double principle = double.parse(stdin.readLineSync()!);

  print("Enter the rate of interest:");
  double rate = double.parse(stdin.readLineSync()!);

  print("Enter the time:");
  double time = double.parse(stdin.readLineSync()!);

  double simpleInterest = (principle * rate * time) / 100;
  print(
      "The simple Interest is: $simpleInterest,rate of interest is: $rate,time is: $time");
}
