import 'package:flutter/material.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Second Screen',
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 150,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Center(
              child: Text('Go First Screen'),
            ),
          ),
        ),
      ),
    );
  }
}
