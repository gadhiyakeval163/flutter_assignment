
void main() {
  int num1 = 10;
  int num2 = 20;

  print("before swapping: num1 = $num1, num2= $num2");

  num1 = num1 + num2;
  num2 = num1 - num2;
  num1 = num1 - num2;

  print("after swapping: num1 = $num1, num2 = $num2");
}
