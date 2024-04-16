import 'package:flutter/material.dart';
import 'package:myscreen/que22(1).dart';

class MyBottomNavigationScreen extends StatefulWidget {
  MyBottomNavigationScreen({super.key});

  @override
  State<MyBottomNavigationScreen> createState() => _BottomAppState();
}

class _BottomAppState extends State<MyBottomNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const MyGalleryPage(),
    const MyAudioScreen(),
    const MyVideoScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Center(
          child: Text('Bottom Navigation Bar App'),
        ),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.audiotrack),
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            label: 'Video',
          ),
        ],
      ),
    );
  }
}

class MyGalleryScreen extends StatelessWidget {
  const MyGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Gallery Page - Dummy Data'),
    );
  }
}

class MyAudioScreen extends StatelessWidget {
  const MyAudioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Audio Page - Dummy Data'),
    );
  }
}

class MyVideoScreen extends StatelessWidget {
  const MyVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Video Page - Dummy Data'),
    );
  }
}
