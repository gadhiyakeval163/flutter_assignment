void main() {
  int number1 = 5;
  int number2 = 10;
  int number3 = 15;

  if (number1 >= number2) {
    if (number1 >= number3) {
      print('$number1 is maximum number');
    } else {
      print('$number3 is maximum number');
    }
  } else {
    if (number2 >= number3) {
      print('$number2 is maximum number');
    } else {
      print('$number3 is maximum number');
    }
  }
}
