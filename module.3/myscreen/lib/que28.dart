import 'package:flutter/material.dart';
import 'package:myscreen/que28(1).dart';

class MyInputNumber extends StatelessWidget {
  const MyInputNumber({super.key});

  @override
  Widget build(BuildContext context) {
     TextEditingController firstNo = TextEditingController();
    TextEditingController secondNo = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Input Two Number'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: firstNo,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                labelText: 'First number',
                hintText: 'Enter a number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: secondNo,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Second number',
                hintText: 'Enter a number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  int num1 = int.tryParse(firstNo.text) ?? 0;
                  int num2 = int.tryParse(secondNo.text) ?? 0;
                  int sum = num1 + num2;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyOutPutPage(sum: sum)));
                },
                child: const Center(
                  child: Text('Sum'),
                ))
          ],
        ),
      ),
    );
  }
}
