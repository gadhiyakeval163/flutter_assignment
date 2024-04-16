import 'package:flutter/material.dart';

class MyImagePage extends StatelessWidget {
  const MyImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    var images = ['img4.jpeg', 'lake.jpeg', 'natural.jpeg', 'natural(1).jpeg'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('image view page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView.separated(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Image.asset('assets/images${images[index]}');
          },
          separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                height: 10,
                thickness: 10,
              ),
            );
          },
        ),
      ),
    );
  }
}
