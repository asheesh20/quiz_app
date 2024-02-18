import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  }); // super forwards key argumnet to parent class

  final void Function(String answer) onSelectAnswer;

  @override // overriding a method expected by parent class (i.e) StatefulWidget
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(
        selectedAnswer); // widget is a property which access to the Widget class and its property (i.e onSelectAnswer)
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity, // takes as much width as possible
      child: Container(
        margin:
            const EdgeInsets.all(40), // provides margin space for all direction
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // vertically centres the contents
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // horizonatally stretches the content
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 209, 177, 244),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                // map converts the list from one type to another type . both new and old list co-exist.
                return AnswerButton(
                    answerText: answer,
                    onTap: () {
                      answerQuestion(answer);
                    }); // answer is each list
              },
            ),
          ],
        ),
      ),
    );
  }
}
