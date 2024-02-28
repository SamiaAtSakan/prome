import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  bool isMovie = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  //   MoviesAPi().getMovieApi();
                },
                child: Text("Filters"))
          ],
          title: Text(
            "Movies",
            style: TextStyle(color: background),
          ),
        ),
        body: Text("Movies are Loaded"));
  }
}
