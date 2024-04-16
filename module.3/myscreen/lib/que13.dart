import 'package:flutter/material.dart';
import 'package:myscreen/que13(1).dart';
import 'package:myscreen/que13(2).dart';
import 'package:myscreen/que13(3).dart';

class MyBottomNavigationscreen extends StatefulWidget {
  const MyBottomNavigationscreen({super.key});

  @override
  State<MyBottomNavigationscreen> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigationscreen> {
  int myIndex = 0;
  List<Widget> myWiget = [
    const MyMenuPage(),
    const MyAccountpage(),
    MyCartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: myWiget[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade200,
        selectedItemColor: Colors.yellow,
        // showSelectedLabels: false,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            print(value);
            myIndex = value;
            print(myIndex);
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.museum_outlined),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
