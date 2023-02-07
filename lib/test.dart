import 'package:flutter/material.dart';
import 'package:movies/Movies/presentation/screens/movies_screen.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MainMoviesScreen();
                  },
                ),
              );
            },
            child: const Text("Navigation")),
      ),
    );
  }
}
