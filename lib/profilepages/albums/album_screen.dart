import 'package:flutter/material.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({super.key});

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  String selectedType = "photos";
  List<Map<String, dynamic>> userAlbums = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Albums'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Dropdown for selecting the type
            DropdownButton<String>(
              value: selectedType,
              onChanged: (String? newValue) {
                setState(() {
                  selectedType = newValue!;
                });
              },
              items: <String>[
                'photos',
                'video',
                'music',
                'files',
                'maps',
                'text'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            // Display data based on the selected type
          ],
        ),
      ),
    );
  }
}
