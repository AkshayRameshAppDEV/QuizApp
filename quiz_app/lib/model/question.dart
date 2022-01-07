class Question {
  int? levelNumber;

  Question(this.levelNumber);

  Map getQuestionsForLevel() {
    Map levelQuiz = {};
    if (levelNumber == 1) {
      levelQuiz = {
        1: {
          "question": "What is the 1st planet in the Solar System?",
          "option_1": "Mercury",
          "option_2": "Venus",
          "option_3": "Earth",
          "option_4": "Mars"
        },
        2: {
          "question": "What is the 2nd planet in the Solar System?",
          "option_1": "Mercury",
          "option_2": "Venus",
          "option_3": "Earth",
          "option_4": "Mars"
        },
      };
    }
    return levelQuiz;
  }
}
