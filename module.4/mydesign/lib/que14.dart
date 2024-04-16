import 'package:flutter/material.dart';

class MyAlertPage extends StatelessWidget {
  const MyAlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Alert Dialog '),
                  content: const Text('This is a simple alert dialog.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                    ),
                  ],
                  icon: const Icon(Icons.warning),
                  iconColor: Colors.red,
                );
              },
            );
          },
          child: const Text('click'),
        ),
      ),
    );
  }
}