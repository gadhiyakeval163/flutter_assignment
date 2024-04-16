import 'package:flutter/material.dart';

class MyGmailScreen extends StatefulWidget {
  const MyGmailScreen({super.key});

  @override
  _MyGmailScreenState createState() => _MyGmailScreenState();
}

class _MyGmailScreenState extends State<MyGmailScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    MyInboxScreen(),
    MySentScreen(),
    MyDraftsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gmail Page'),
        backgroundColor: Colors.blue,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Sent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drafts),
            label: 'Drafts',
          ),
        ],
      ),
    );
  }
}

class MyInboxScreen extends StatelessWidget {
  const MyInboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Inbox Screen'),
    );
  }
}

class MySentScreen extends StatelessWidget {
  const MySentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Sent Screen'),
    );
  }
}

class MyDraftsScreen extends StatelessWidget {
  const MyDraftsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Drafts Screen'),
    );
  }
}
