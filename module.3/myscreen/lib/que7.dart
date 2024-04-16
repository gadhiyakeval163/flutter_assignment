import 'package:flutter/material.dart';

class MyCheckboxPage extends StatefulWidget {
  const MyCheckboxPage({super.key});

  @override
  _MyCheckboxPageState createState() => _MyCheckboxPageState();
}

class _MyCheckboxPageState extends State<MyCheckboxPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            const SizedBox(height: 20.0),
            if (_isChecked)
              const Text(
                'Text is visible!',
                style: TextStyle(fontSize: 20.0),
              ),
          ],
        ),
      ),
    );
  }
}
