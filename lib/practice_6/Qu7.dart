import 'dart:io';

class Question {
  String text;
  List<String> options;
  int correctAnswer;

  Question(this.text, this.options, this.correctAnswer);

  bool checkAnswer(int choice) {
    return choice == correctAnswer;
  }

  void display() {
    print(text);
    for (var i = 0; i < options.length; i++) {
      print('${i + 1}. ${options[i]}');
    }
  }
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    print('Welcome to the Quiz!');
    for (var q in questions) {
      q.display();
      stdout.write('Enter your choice (1-${q.options.length}): ');
      var input = stdin.readLineSync();
      var choice = int.tryParse(input ?? '') ?? 0;

      if (q.checkAnswer(choice - 1)) {
        print('Correct!\n');
        score++;
      } else {
        print('Wrong! Correct answer: ${q.options[q.correctAnswer]}\n');
      }
    }
    print('Quiz finished! Your score: $score / ${questions.length}');
  }
}

void main() {
  var q1 = Question('Capital of Bangladesh?', ['Dhaka', 'Chittagong', 'Sylhet', 'Khulna'], 0);
  var q2 = Question('2 + 2 = ?', ['3', '4', '5', '6'], 1);
  var q3 = Question('Flutter uses which language?', ['Java', 'C#', 'Dart', 'Python'], 2);

  var quiz = Quiz([q1, q2, q3]);
  quiz.start();
}
