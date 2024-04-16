import 'package:flutter/material.dart';

class MyReverseNumberScreen extends StatefulWidget {
  const MyReverseNumberScreen({super.key});

  @override
  _MyReverseNumberScreenState createState() => _MyReverseNumberScreenState();
}

class _MyReverseNumberScreenState extends State<MyReverseNumberScreen> {
  final TextEditingController _controller = TextEditingController();
  String _reversedNumber = '';
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _reverseNumber() {
    String input = _controller.text;
    if (input.isNotEmpty) {
      int? number = int.tryParse(input);
      if (number != null) {
        String reversed = number.toString().split('').reversed.join();
        setState(() {
          _reversedNumber = reversed;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reverse Number',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _reverseNumber,
              child: const Text('Reverse'),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Reversed Number: $_reversedNumber',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
