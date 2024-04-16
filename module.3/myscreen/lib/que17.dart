import 'package:flutter/material.dart';

class MyExitAppScreen extends StatelessWidget {
  const MyExitAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exit Screen'),
        backgroundColor: Colors.blue,
      ),
      body: WillPopScope(
        onWillPop: () async {
          return await onBackPressed(context);
        },
        child: const Center(
          child: Text('Press back button to exit'),
        ),
      ),
    );
  }

  Future<bool> onBackPressed(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Exit'),
        content: const Text('Are you sure you want to exit?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    ).then((value) => value ?? false);
  }
}
