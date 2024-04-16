import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyLifecyclePage extends StatefulWidget {
  const MyLifecyclePage({super.key});

  @override
  _MyLifecyclePageState createState() => _MyLifecyclePageState();
}

class _MyLifecyclePageState extends State<MyLifecyclePage>
    with WidgetsBindingObserver {
  String _lifecycleState = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    setState(() {
      _lifecycleState = state.toString();
      showToast(_lifecycleState);
    });
  }

  void showToast(String message) {
    MethodChannel platform = const MethodChannel('toast');
    platform.invokeMethod('showToast', {'message': message});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity Lifecycle Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Current Lifecycle Stages:',
            ),
            Text(
              _lifecycleState,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
