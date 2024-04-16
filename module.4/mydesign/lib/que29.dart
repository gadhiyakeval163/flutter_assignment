import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'dart:io' show Platform;

class MyLauncherPage extends StatelessWidget {
  const MyLauncherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Launcher'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            launcherButtons(
              title: 'Phone Launcher',
              icon: Icons.phone,
              onPressed: () {
                Uri uri = Uri.parse('tel:+919081790803');
                launcher.launch(uri.toString());
              },
            ),
            const SizedBox(height: 20),
            Platform.isAndroid
                ? launcherButtons(
                    title: 'Send SMS',
                    icon: Icons.message,
                    onPressed: () {
                      launcher.launch('sms:+919081790803');
                    },
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget launcherButtons({
    required String title,
    required IconData icon,
    required Function() onPressed,
  }) {
    return Container(
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
