import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class MyPhoneCallScreen extends StatefulWidget {
  const MyPhoneCallScreen({super.key});

  @override
  _MyPhoneCallScreenState createState() => _MyPhoneCallScreenState();
}

class _MyPhoneCallScreenState extends State<MyPhoneCallScreen> {
  @override
  void initState() {
    super.initState();
    _requestPhoneCallPermission();
  }

  void _requestPhoneCallPermission() async {
    var status = await Permission.phone.request();
    if (status.isDenied || status.isRestricted || status.isPermanentlyDenied) {
      _showPermissionDialog();
    }
  }

  void _showPermissionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Permission Required'),
          content:
              const Text('This app requires permission to make phone calls.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Deny'),
            ),
            TextButton(
              onPressed: () {
                openAppSettings();
                Navigator.of(context).pop();
              },
              child: const Text('Allow'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Call App'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Phone Call App',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
