import 'package:flutter/material.dart';
import 'package:movies/home_screen.dart';
import 'package:movies/model/Movies.dart';

import 'package:movies/MovieDetails/ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
