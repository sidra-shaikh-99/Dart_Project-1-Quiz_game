import 'dart:io';

void main() {
  int score = 0;

  print("Welcome to the Quiz Game!\n");

  // Questions list
  List<Map<String, dynamic>> questions = [
    {
      "question": "What is the capital of India?",
      "options": ["Mumbai", "Delhi", "Kolkata"],
      "answer": "b"
    },
    {
      "question": "What is 2 + 2?",
      "options": ["3", "4", "5"],
      "answer": "b"
    },
    {
      "question": "Which language is used for Flutter?",
      "options": ["Java", "Python", "Dart"],
      "answer": "c"
    },
    {
      "question": "Who is the Prime Minister of India (2024)?",
      "options": ["Rahul Gandhi", "Narendra Modi", "Amit Shah"],
      "answer": "b"
    },
    {
      "question": "Which planet is known as Red Planet?",
      "options": ["Earth", "Mars", "Jupiter"],
      "answer": "b"
    },
    {
      "question": "Which is the largest ocean?",
      "options": ["Atlantic", "Indian", "Pacific"],
      "answer": "c"
    },
    {
      "question": "Who wrote 'Harry Potter'?",
      "options": ["J.K. Rowling", "Shakespeare", "Chetan Bhagat"],
      "answer": "a"
    },
    {
      "question": "Which gas do we breathe?",
      "options": ["Oxygen", "Nitrogen", "Carbon dioxide"],
      "answer": "a"
    },
    {
      "question": "Which country is famous for anime?",
      "options": ["China", "Japan", "Korea"],
      "answer": "b"
    },
    {
      "question": "What is the square root of 16?",
      "options": ["2", "4", "8"],
      "answer": "b"
    },
  ];

  // Loop through questions
  for (int i = 0; i < questions.length; i++) {
    var q = questions[i];

    print("${i + 1}. ${q["question"]}");
    print("a) ${q["options"][0]}");
    print("b) ${q["options"][1]}");
    print("c) ${q["options"][2]}");

    String? userAnswer = stdin.readLineSync();

    if (userAnswer?.toLowerCase() == q["answer"]) {
      print("Correct!\n");
      score++;
    } else {
      print("Wrong!\n");
    }
  }

  // Final Score
  print("🎯 Your Final Score: $score / ${questions.length}");

  if (score == questions.length) {
    print("Excellent!");
  } else if (score >= 7) {
    print("Good job!");
  } else {
    print("Keep practicing!");
  }
}