import 'package:flutter/material.dart';
import 'package:myscreen/que3(1).dart';

class MyNumberRangeScreen extends StatelessWidget {
  const MyNumberRangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _firstNumber = TextEditingController();
    TextEditingController _secondNumber = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Number Range App',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _firstNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter the First Number',
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 15),
                  floatingLabelStyle: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w300),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _secondNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter the Second Number',
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 15),
                  floatingLabelStyle: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w300),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                int? firstNumber = int.tryParse(_firstNumber.text);
                int? secondNumber = int.tryParse(_secondNumber.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyRangeNumber(
                            firstNumber: firstNumber!,
                            secondNumber: secondNumber!)));
              },
              child: const Text(
                'Done',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
