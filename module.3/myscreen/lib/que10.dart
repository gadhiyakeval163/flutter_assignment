import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyColorScreen extends StatefulWidget {
  const MyColorScreen({super.key});

  @override
  _MyColorScreenState createState() => _MyColorScreenState();
}

class _MyColorScreenState extends State<MyColorScreen> {
  double _redValue = 0;
  double _greenValue = 0;
  double _blueValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Selector Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Red'),
            Slider(
              value: _redValue,
              min: 0,
              max: 255,
              onChanged: (newValue) {
                setState(() {
                  _redValue = newValue;
                });
                _changeBackgroundColor();
              },
            ),
            const Text('Green'),
            Slider(
              value: _greenValue,
              min: 0,
              max: 255,
              onChanged: (newValue) {
                setState(() {
                  _greenValue = newValue;
                });
                _changeBackgroundColor();
              },
            ),
            const Text('Blue'),
            Slider(
              value: _blueValue,
              min: 0,
              max: 255,
              onChanged: (newValue) {
                setState(() {
                  _blueValue = newValue;
                });
                _changeBackgroundColor();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _changeBackgroundColor() {
    final Color newColor = Color.fromARGB(
        255, _redValue.toInt(), _greenValue.toInt(), _blueValue.toInt());
    setState(() {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: newColor,
        systemNavigationBarIconBrightness: newColor.computeLuminance() > 0.5
            ? Brightness.dark
            : Brightness.light,
      ));
    });
  }
}
