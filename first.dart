import 'dart:io';
// Define quiz questions and answers
List<Map<String, dynamic>> quizData = [
  {
    'question': 'What is the capital of France?',
    'options': ['Paris', 'London', 'Berlin', 'Madrid'],
    'correctAnswer': 'Paris'
  },
  {
    'question': 'Which planet is known as the Red Planet?',
    'options': ['Earth', 'Mars', 'Jupiter', 'Saturn'],
    'correctAnswer': 'Mars'
  },
  {
    'question': 'Who wrote "Romeo and Juliet"?',
    'options': ['Charles Dickens', 'William Shakespeare', 'Jane Austen', 'Mark Twain'],
    'correctAnswer': 'William Shakespeare'
  },
  {
    'question': 'What is the largest mammal in the world?',
    'options': ['Elephant', 'Blue Whale', 'Giraffe', 'Hippo'],
    'correctAnswer': 'Blue Whale'
  },
  {
    'question': 'What is the tallest mountain in the world?',
    'options': ['Mount Everest', 'K2', 'Kangchenjunga', 'Makalu'],
    'correctAnswer': 'Mount Everest'
  }
];

void main() {
  int score = 0;
  
  // Quiz function
  void runQuiz() {
    for (var i = 0; i < quizData.length; i++) {
      print('Question ${i + 1}: ${quizData[i]['question']}');
      
      // Display options
      for (var j = 0; j < quizData[i]['options'].length; j++) {
        print('${j + 1}. ${quizData[i]['options'][j]}');
      }
      
      // Get user input
      stdout.write('Your answer: ');
      var userAnswer = stdin.readLineSync();
      
      // Validate answer
      if (userAnswer != null && userAnswer.isNotEmpty) {
        userAnswer = quizData[i]['options'][int.parse(userAnswer) - 1];
      }
      
      // Check if answer is correct
      if (userAnswer == quizData[i]['correctAnswer']) {
        score++;
        print('Correct!');
      } else {
        print('Incorrect. The correct answer is: ${quizData[i]['correctAnswer']}');
      }
      print('');
    }
    
    // Display final score
    print('Quiz completed! Your final score is: $score out of ${quizData.length}');
  }
  
  // Start quiz
  runQuiz();
}
