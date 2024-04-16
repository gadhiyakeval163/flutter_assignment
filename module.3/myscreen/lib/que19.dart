import 'package:flutter/material.dart';

class MyProfileLogoutScreen extends StatefulWidget {
  const MyProfileLogoutScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileLogoutScreen> createState() => _ProfileLogoutState();
}

class _ProfileLogoutState extends State<MyProfileLogoutScreen> {
  String _texts = 'Welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton(
            onSelected: (String value) {
              setState(() {
                switch (value) {
                  case 'profile':
                    _texts = 'Profile';
                    break;
                  case 'logout':
                    _texts = 'Logout';
                    break;
                  default:
                    break;
                }
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem(
                value: 'profile',
                child: ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text('Profile'),
                ),
              ),
              const PopupMenuItem(
                value: 'logout',
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text(_texts),
      ),
    );
  }
}
