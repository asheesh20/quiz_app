import 'package:flutter/material.dart';
//import 'package:quiz_app/questions_screen.dart';

class AnswerButton extends StatelessWidget {
  // no state that needs to be managed
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });
  // named argument are optional , to make them required , required keyword is used

  final String answerText;
  final void Function() onTap; // 255, 20, 7, 47

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 20, 7, 47),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
              horizontal: 40, vertical: 10) // Text Color

          ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 14.2),
      ),
    );
  }
}
