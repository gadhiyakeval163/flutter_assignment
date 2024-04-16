import 'package:flutter/material.dart';

class MyChangeBackground extends StatefulWidget {
  const MyChangeBackground({super.key});

  @override
  State<MyChangeBackground> createState() => _ChangeBackgroundState();
}

class _ChangeBackgroundState extends State<MyChangeBackground> {
  bool backgroundColors = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColors == true ? Colors.white : Colors.red,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                if (backgroundColors) {
                  backgroundColors = false;
                } else {
                  backgroundColors = true;
                }
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.black;
                  }
                  return Colors.blue;
                },
              ),
              elevation: MaterialStateProperty.all<double?>(4.0),
            ),
            child: const Text(
              "Click",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
      ),
    );
  }
}
