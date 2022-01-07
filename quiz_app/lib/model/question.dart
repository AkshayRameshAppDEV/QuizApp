class Question {
  int? levelNumber;

  Question(this.levelNumber);

  Map getQuestionsForLevel() {
    Map levelQuiz = {};
    if (levelNumber == 1) {
      levelQuiz = {
        1: {
          "question": "What is the 1st planet in the Solar System?",
          1: "Mercury",
          2: "Venus",
          3: "Earth",
          4: "Mars"
        },
        2: {
          "question": "What is the 2nd planet in the Solar System?",
          1: "Jupiter",
          2: "Venus",
          3: "Saturn",
          4: "Uranus"
        },
      };
    } else if (levelNumber == 2) {
      levelQuiz = {
        1: {
          "question": "What is Android?",
          1: "Mobile OS",
          2: "Computer",
          3: "Phone",
          4: "Calculator"
        },
        2: {
          "question": "What is iOS?",
          1: "Mobile OS",
          2: "Computer",
          3: "Phone",
          4: "Calculator"
        },
      };
    }
    return levelQuiz;
  }
}
