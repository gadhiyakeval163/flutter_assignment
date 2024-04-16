import 'package:flutter/material.dart';

class MyAccountpage extends StatelessWidget {
  const MyAccountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account Page'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const Center(
        child: Text(
          'Account Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
