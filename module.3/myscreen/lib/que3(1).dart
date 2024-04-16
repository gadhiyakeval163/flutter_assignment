import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyRangeNumber extends StatelessWidget {
  int firstNumber;
  int secondNumber;

  MyRangeNumber(
      {super.key, required this.firstNumber, required this.secondNumber});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = [];
    if (firstNumber <= secondNumber) {
      for (int i = firstNumber; i <= secondNumber; i++) {
        numbers.add(i);
      }
    } else {
      for (int i = secondNumber; i <= firstNumber; i++) {
        numbers.add(i);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Range of number'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Number between $firstNumber and $secondNumber:',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              numbers.join(','),
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
