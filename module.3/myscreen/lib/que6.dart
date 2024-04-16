import 'package:flutter/material.dart';

class MyFontSizeChange extends StatefulWidget {
  const MyFontSizeChange({super.key});

  @override
  _MyFontSizeChangeState createState() => _MyFontSizeChangeState();
}

class _MyFontSizeChangeState extends State<MyFontSizeChange> {
  double _fontSize = 20.0;

  void _increaseFontSize() {
    setState(() {
      _fontSize += 2.0;
    });
  }

  void _decreaseFontSize() {
    setState(() {
      if (_fontSize > 2.0) {
        _fontSize -= 2.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Font Size Changer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello',
              style: TextStyle(fontSize: _fontSize, color: Colors.black),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _increaseFontSize,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _decreaseFontSize,
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
