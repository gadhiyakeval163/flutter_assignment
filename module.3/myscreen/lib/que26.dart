import 'package:flutter/material.dart';
import 'package:myscreen/que26(1).dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('creen One'),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 150,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MySecondPage()));
            },
            child: const Center(
              child: Text('Next Screen'),
            ),
          ),
        ),
      ),
    );
  }
}
