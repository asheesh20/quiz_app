import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
//import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    const Quiz(),
  );
}

class Anything extends StatelessWidget {
  const Anything({super.key});

  @override
  Widget build(context) {
    return const Text('Hello there');
  }
}
