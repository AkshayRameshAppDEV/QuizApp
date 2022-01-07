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
    } else if (levelNumber == 2) {
      levelQuiz = {
        1: {
          "question": "What is Android?",
          "option_1": "Mobile OS",
          "option_2": "Computer",
          "option_3": "Phone",
          "option_4": "Calculator"
        },
        2: {
          "question": "What is iOS?",
          "option_1": "Mobile OS",
          "option_2": "Computer",
          "option_3": "Phone",
          "option_4": "Calculator"
        },
      };
    }
    return levelQuiz;
  }
}
