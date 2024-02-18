import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

// Widgets are objects and objects are regular values

class Quiz extends StatefulWidget {
  // Stateful & Stateless class is provided by flutter
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    // createState creates an instance of a class that is based on State class
    return _QuizState();
  }
} // Widget class

class _QuizState extends State<Quiz> {
  // dart automatically provides a constructor function

  List<String> selectedAnswer = [];

  var activeScreen = 'start-screen';

  void switchScreen() {
    // state changing function
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        // selectedAnswer = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswer,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      // MaterialApp - wraps overall UI
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 90, 8, 144),
              ],
              begin: Alignment.topLeft, // gradient flow
              end: Alignment.bottomRight, // gradient flow
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
} // State class