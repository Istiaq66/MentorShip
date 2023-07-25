import 'package:quiz_app/model/questions.dart';
import 'package:hive_flutter/hive_flutter.dart';

 class Load{

  Box<Questions> questionBox = Hive.box<Questions>('q');
 
  List<Questions> questions = [
    Questions(
      subject: 'Math',
      id: 1,
      question: 'What is the square root of 64?',
      answer: 8,
      options: ['4', '6', '8', '10'],
    ),
    Questions(
      subject: 'Math',
      id: 2,
      question: 'What is the value of pi (π)?',
      answer: 2,
      options: ['1.414', '2.718', '3.14159', '4.669'],
    ),
    Questions(
      subject: 'Math',
      id: 3,
      question: 'Solve the equation: 2x + 5 = 15',
      answer: 2,
      options: ['2', '3', '5', '7'],
    ),
    Questions(
      subject: 'Math',
      id: 4,
      question: 'What is the result of 5! (factorial of 5)?',
      answer: 3,
      options: ['24', '60', '100', '120'],
    ),
    Questions(
      subject: 'Math',
      id: 5,
      question: 'What is the value of log10(100)?',
      answer: 1,
      options: ['1', '2', '3', '4'],
    ),
    Questions(
      subject: 'Physics',
      id: 1,
      question: 'What is the unit of measurement for electric current?',
      answer: 1,
      options: ['Volts', 'Amperes', 'Ohms', 'Watts'],
    ),
    Questions(
      subject: 'Physics',
      id: 2,
      question:
          'Which law describes the relationship between an object\'s mass, acceleration, and the applied force?',
      answer: 3,
      options: [
        'Newton\'s First Law',
        'Law of Reflection',
        'Newton\'s Second Law',
        'Law of Gravitation'
      ],
    ),
    Questions(
      subject: 'Physics',
      id: 3,
      question: 'What is the SI unit of energy?',
      answer: 0,
      options: ['Joule', 'Watt', 'Newton', 'Volt'],
    ),
    Questions(
      subject: 'Physics',
      id: 4,
      question: 'What type of waves are used for communication in cell phones?',
      answer: 2,
      options: ['Ultraviolet waves', 'Radio waves', 'Microwaves', 'X-rays'],
    ),
    Questions(
      subject: 'Physics',
      id: 5,
      question: 'What is the speed of light in a vacuum?',
      answer: 3,
      options: [
        '2.99 × 10^8 m/s',
        '3.00 × 10^6 m/s',
        '3.00 × 10^8 m/s',
        '2.99 × 10^6 m/s'
      ],
    ),
    Questions(
      subject: 'Chemistry',
      id: 1,
      question: 'What is the atomic number of hydrogen?',
      answer: 0,
      options: ['1', '2', '3', '4'],
    ),
    Questions(
      subject: 'Chemistry',
      id: 2,
      question: 'What is the chemical symbol for gold?',
      answer: 2,
      options: ['Au', 'Ag', 'Hg', 'Fe'],
    ),
    Questions(
      subject: 'Chemistry',
      id: 3,
      question: 'What is the pH value of a neutral solution?',
      answer: 1,
      options: ['1', '7', '14', '0'],
    ),
    // Add more chemistry questions here with IDs starting from 14
    Questions(
      subject: 'Chemistry',
      id: 4,
      question: 'What is the formula for water?',
      answer: 3,
      options: ['H2O', 'CO2', 'NaCl', 'CH4'],
    ),
    Questions(
      subject: 'Chemistry',
      id: 5,
      question: 'What is the chemical name for the compound NH3?',
      answer: 0,
      options: [
        'Ammonia',
        'Nitrogen Monoxide',
        'Hydrochloric Acid',
        'Sodium Hydroxide'
      ],
    ),
    Questions(
      subject: 'Biology',
      id: 1,
      question: 'What is the powerhouse of the cell?',
      answer: 1,
      options: [
        'Nucleus',
        'Mitochondria',
        'Golgi apparatus',
        'Endoplasmic reticulum'
      ],
    ),
    Questions(
      subject: 'Biology',
      id: 2,
      question: 'What is the largest organ in the human body?',
      answer: 2,
      options: ['Liver', 'Heart', 'Skin', 'Brain'],
    ),
    Questions(
      subject: 'Biology',
      id: 3,
      question:
          'What is the process by which plants convert sunlight into energy?',
      answer: 0,
      options: [
        'Photosynthesis',
        'Respiration',
        'Fermentation',
        'Transpiration'
      ],
    ),
    Questions(
      subject: 'Biology',
      id: 4,
      question: 'What is the scientific name for humans?',
      answer: 3,
      options: [
        'Homo erectus',
        'Homo habilis',
        'Homo sapiens',
        'Homo neanderthalensis'
      ],
    ),
    Questions(
      subject: 'Biology',
      id: 5,
      question: 'Which of the following is not a major blood type?',
      answer: 2,
      options: ['A', 'B', 'D', 'O'],
    ),
    Questions(
      subject: 'General Knowledge',
      id: 1,
      question: 'What is the capital of France?',
      answer: 2,
      options: ['London', 'Rome', 'Paris', 'Madrid'],
    ),
    Questions(
      subject: 'General Knowledge',
      id: 2,
      question: 'Who painted the Mona Lisa?',
      answer: 1,
      options: [
        'Vincent van Gogh',
        'Leonardo da Vinci',
        'Pablo Picasso',
        'Claude Monet'
      ],
    ),
    Questions(
      subject: 'General Knowledge',
      id: 3,
      question: 'What is the largest ocean in the world?',
      answer: 3,
      options: [
        'Atlantic Ocean',
        'Indian Ocean',
        'Arctic Ocean',
        'Pacific Ocean'
      ],
    ),
    Questions(
      subject: 'General Knowledge',
      id: 4,
      question: 'Which planet is known as the "Red Planet"?',
      answer: 0,
      options: ['Mars', 'Venus', 'Jupiter', 'Saturn'],
    ),
    Questions(
      subject: 'General Knowledge',
      id: 5,
      question: 'Who wrote the play "Romeo and Juliet"?',
      answer: 2,
      options: [
        'William Shakespeare',
        'George Orwell',
        'Jane Austen',
        'Charles Dickens'
      ],
    ),
    Questions(
      subject: 'Programming',
      id: 1,
      question:
          "Flutter is an open-source UI software development kit created by ______",
      answer: 1,
      options: ['Apple', 'Google', 'Facebook', 'Microsoft'],
    ),
    Questions(
      subject: 'Programming',
      id: 2,
      question: "When did Google release Flutter?",
      answer: 3,
      options: ['Jun 2017', 'May 2018', 'May 2016', 'May 2017'],
    ),
    Questions(
      subject: 'Programming',
      id: 3,
      question: "A memory location that holds a single letter or number.",
      answer: 2,
      options: ['Double', 'Int', 'Char', 'Word'],
    ),
    Questions(
      subject: 'Programming',
      id: 4,
      question: "What command do you use to output data to the screen?",
      answer: 2,
      options: ['Cin', 'Count>>', 'Cout', 'Output>>'],
    ),
    Questions(
      subject: 'Programming',
      id: 5,
      question: "What is the syntax to declare a variable in JavaScript?",
      answer: 0,
      options: ['var', 'int', 'let', 'const'],
    ),
  ];


  writeData() {
    for (int i = 0; i < questions.length; i++) {
       questionBox.add(questions[i]);
    }
  }

    //deletedata
  Future<void> deleteData() async {
    await questionBox.clear();
  }

}


