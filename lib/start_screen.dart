import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,
      {super.key}); // startQuiz is an argumnet that contains function as a value

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize:
          MainAxisSize.min, // vertical space as main axis of colomn is vertical
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(
              150, 255, 255, 255), // alpha value : 0 - transparent , 255 opaque
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 237, 223, 252),
            fontSize: 23,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
          // white: constructor function , purple : method
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt_outlined),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          label: const Text(
            'Start Quiz',
          ),
        ),
      ],
    ));
  }
}
