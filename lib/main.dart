import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
//import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    const Quiz(),
  );
}

class newFeature extends StatelessWidget {
  const newFeature({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 154, 115, 115),
        ),
      ),
    );
  }
}
