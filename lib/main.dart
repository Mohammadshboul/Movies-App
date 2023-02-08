import 'package:flutter/material.dart';
import 'package:movies/Movies/presentation/screens/movies_screen.dart';
import 'package:movies/core/services/services_locator.dart';

void main() {
  ServicesLocator().init();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainMoviesScreen();
  }
}
