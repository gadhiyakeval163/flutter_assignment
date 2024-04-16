import 'package:flutter/material.dart';

class MyCitySelectScreen extends StatefulWidget {
  const MyCitySelectScreen({super.key});

  @override
  State<MyCitySelectScreen> createState() => _MyCitySelectScreenState();
}

class _MyCitySelectScreenState extends State<MyCitySelectScreen> {
  String _selectedCity = 'No city selected';
  final List<String> _cities = [
    'Ahmadabad',
    'Rajkot',
    'Jamnagar',
    'Baroda',
    'Surat',
    'Dwarka',
    'Bhuj',
    'Kutch',
    'Gondal',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Select Alert Box Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  showCitySelectBox(context);
                },
                child: const Center(
                  child: Text(
                    "City",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              _selectedCity,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            )
          ],
        ),
      ),
    );
  }

  void showCitySelectBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Select a city"),
          content: SingleChildScrollView(
            child: ListBody(
              children: _cities.map((String city) {
                return RadioListTile(
                    title: Text(city),
                    value: city,
                    groupValue: _selectedCity,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedCity = value ?? 'No City selected';
                      });
                      Navigator.of(context).pop();
                    });
              }).toList(),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Cancel"))
          ],
        );
      },
    );
  }
}
