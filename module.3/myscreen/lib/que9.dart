import 'package:flutter/material.dart';

class MyRadioColors extends StatefulWidget {
  const MyRadioColors({super.key});

  @override
  State<MyRadioColors> createState() => _RadioColorsState();
}

class _RadioColorsState extends State<MyRadioColors> {
  Color? sColors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sColors,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'select a background colors',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          RadioListTile(
              title: const Text(
                'White',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    letterSpacing: 1.4),
              ),
              value: Colors.white,
              groupValue: sColors,
              onChanged: (value) {
                setState(() {
                  sColors = value;
                });
              }),
          RadioListTile(
              title: const Text(
                'Red',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    letterSpacing: 1.4),
              ),
              value: Colors.red,
              groupValue: sColors,
              onChanged: (value) {
                setState(() {
                  sColors = value!;
                });
              }),
          RadioListTile(
              title: const Text(
                'Yellow',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    letterSpacing: 1.4),
              ),
              value: Colors.yellow,
              groupValue: sColors,
              onChanged: (value) {
                setState(() {
                  sColors = value!;
                });
              }),
          RadioListTile(
              title: const Text(
                'Green',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    letterSpacing: 1.4),
              ),
              value: Colors.green,
              groupValue: sColors,
              onChanged: (value) {
                setState(() {
                  sColors = value!;
                });
              }),
          RadioListTile(
              title: const Text(
                'Blue',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    letterSpacing: 1.4),
              ),
              value: Colors.blue,
              groupValue: sColors,
              onChanged: (value) {
                setState(() {
                  sColors = value!;
                });
              }),
        ],
      ),
    );
  }
}
