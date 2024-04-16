import 'package:flutter/material.dart';

class MyGalleryPage extends StatelessWidget {
  const MyGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      'natural.jpeg',
      'natural(1).jpeg',
      'natural.jpeg',
      'natural(1).jpeg'
    ];
    var title = ['User', 'User', 'User', 'User'];
    var subtitle = ['promoted', 'promoted', 'promoted', 'promoted'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/${images[index]}'),
                ),
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title[index],
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
                subtitle: Text(
                  subtitle[index],
                  style: const TextStyle(fontSize: 15),
                ),
                trailing: const Icon(Icons.add),
              ),
              Image.asset(
                'assets/images/${images[index]}',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.thumb_up),
                          onPressed: () {},
                        ),
                        const Text('Like'),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.comment),
                          onPressed: () {},
                        ),
                        const Text('Comment'),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () {},
                        ),
                        const Text('Share'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}