import 'package:flutter/material.dart';
import 'package:prome/apis/album_api.dart';
import 'package:prome/models/album_model.dart';
import 'package:prome/profilepages/albums/album_detail.dart';
import 'package:prome/profilepages/albums/create_album.dart';
import 'package:prome/utils/color.dart';

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
    _fetchUserAlbums();
  }

  Future<void> _fetchUserAlbums() async {
    try {
      var albums = await AlbumApi().getUserAlbums(selectedType);
      setState(() {
        userAlbums = albums as List<Map<String, dynamic>>;
      });
    } catch (error) {
      print('Error fetching user albums: $error');
    }
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
