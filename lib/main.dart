import 'package:flutter/material.dart';
import 'package:movies/Movies/presentation/screens/movies_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MoviesScreen();
  }
}
