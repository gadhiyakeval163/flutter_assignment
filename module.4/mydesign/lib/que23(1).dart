import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Keval Patel'),
            accountEmail: const Text('gadhiyakeval163@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/natural.jpeg'),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage('assets/images/lake.jpeg'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('gallary'),
            onTap: () => print('gallary clicked'),
          ),
          ListTile(
            leading: const Icon(Icons.audio_file),
            title: const Text('audio'),
            onTap: () => print('audio clicked'),
          ),
          ListTile(
            leading: const Icon(Icons.video_call),
            title: const Text('video'),
            onTap: () => print('video clicked'),
          ),
        ],
      ),
    );
  }
}