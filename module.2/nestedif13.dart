void main() {
  int num1 = 10;
  int num2 = 20;
  int num3 = 40;

  if (num1 >= num2) {
    if (num1 >= num3) {
      print('$num1 is a maximum number');
    } else {
      print('$num3 is a maximum number');
    }
  } else {
    if (num2 >= num3) {
      print('$num2 is a maximum number');
    } else {
      print('$num3 is a maximum number');
    }
  }
}
