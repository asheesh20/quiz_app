class QuizQuestion {
  // blueprint of objects that contains questions and answers as data structure
  const QuizQuestion(this.text, this.answer);

  final String text; // instance variable or property
  final List<String> answer; // instance variable or property

  List<String> getShuffledAnswers() {
    final shuffledList =
        List.of(answer); // list is a class , of creates a copy of existing list
    shuffledList.shuffle(); // shuffles the list in place
    return shuffledList;
  }
}
