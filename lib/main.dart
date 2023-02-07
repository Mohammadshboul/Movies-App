import 'package:flutter/material.dart';
import 'package:movies/core/services/services_locator.dart';
import 'package:movies/test.dart';

void main() {
  ServicesLocator().init();
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const TestScreen();
  }
}
