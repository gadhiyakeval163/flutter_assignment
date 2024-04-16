import 'package:flutter/material.dart';
import 'que23(1).dart';

class MyNavigationDrawer extends StatefulWidget {
  const MyNavigationDrawer({super.key});

  @override
  State<MyNavigationDrawer> createState() => _MyNavigationDrawerState();
}

class _MyNavigationDrawerState extends State<MyNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          title: const Text('Navigation Drawer'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text('Navigation Drawer'),
        ));
  }
}